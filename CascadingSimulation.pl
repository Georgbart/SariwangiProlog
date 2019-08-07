%--------------------------------------------------
%Facts
%--------------------------------------------------

:-['NodesEdges.pl'].

:- dynamic first/1.
%for storing collapses
:- dynamic collapsed/1.
%for storing threshold
:- dynamic threshold/1.

%--------------------------------------------------
%Other
%--------------------------------------------------

%Rule for defining systems Node
systemNode(A):-
	node(A,_,_,_),
	not(node(A,firstfailure,_,_)),
	not(node(A,company,_,_)),
	not(node(A,financial,_,_)).
	
%Check Graph
path(A,B):-
	travel(A,[B]).
	
travel(A,[A|_]).
travel(A,[Y|Tail]):-
	edge(_,X,Y,_,_,_),
	writeln(X),
	not(member(X,Tail)),
	travel(A,[X,Y|Tail]).
	
%Fact Changer
replace(OldFact, NewFact) :-
    (   call(OldFact) -> retract(OldFact),
        assertz(NewFact);
		writeln('replace failure'),
		false
    ).

%Predicate to check for collapsed(Bankrupt) nodes
%Nodes aare considered collapsed should their netWorth < (Threshold * NetWorth)
collapse(Name):-
	node(Name,_,CNet,ONet),
	not(systemNode(Name)),
	threshold(Threshold),
	I is Threshold * ONet,
	CNet < I.
	
vulnerable(Name):-
	node(Name,_,CNet,ONet),
	threshold(Threshold),
	not(collapsed(Name)),
	I is (Threshold + 0.01) * ONet,
	CNet < I.
	
%Check total Losses of the network
totalLoss(N):-
	aggregate_all(sum(CNet-ONet),node(_,_,CNet,ONet),N).
	
listCollapsed(List):-
	bagof(Name,collapsed(Name),List).

%--------------------------------------------------
%Changing Edges and Nodes
%--------------------------------------------------

%The Rule used to change the current value of an edge to input valuein
%Can only be used to lower value (NewValue < current value)
%Call changeNode
changeEdge(ID,NewValue):-
	edge(ID,From,To,EdgeType,CurrValue,OriValue),
	NewValue =< CurrValue,
	Differ is CurrValue - NewValue,
	replace(edge(ID,From,To,EdgeType,CurrValue,OriValue),
			edge(ID,From,To,EdgeType,NewValue,OriValue)),
	changeNode(To,Differ).

%The Rule used to reduce the current net worth of a node by input value
%Call collapsedNodeChangeEdge should the node collapse

%Handle First Collapse
changeNode(Name,ShockValue):-
	first(Name), !,
	(
		(
			not(collapsed(Name)),
			node(Name,_,CNet,ONet),
			NewNet is CNet - ShockValue,
			replace(node(Name,A,CNet,ONet),
					node(Name,A,NewNet,ONet)),
			assert(collapsed(Name)),
			collapsedNodeChangeEdge(Name,0)
		);
		true
	).
	
	
	
changeNode(Name,ShockValue):-
	node(Name,_,CNet,ONet),
	NewNet is CNet - ShockValue,
	replace(node(Name,A,CNet,ONet),
			node(Name,A,NewNet,ONet)),
	(
		(
			collapse(Name),
			not(collapsed(Name)),
			assert(collapsed(Name))
		)-> collapsedNodeChangeEdge(Name,0);
		true
	).
	
%Used to Find all edges coming from a node
%Call multiChangeEdge to change all found edges
collapsedNodeChangeEdge(From,NewValue):-	
	findall(ID,edge(ID,From,_,_,_,_),List),
	multiChangeEdge(List,NewValue).

%Change all edges whose id is in the list
%Call changeEdge
multiChangeEdge([],_).
multiChangeEdge([H|T],NewValue):-
	changeEdge(H,NewValue),
	multiChangeEdge(T,NewValue).
	

%--------------------------------------------------
%Changing Ownership Edges into Debt Edges
%--------------------------------------------------

%Inititate the changes of all Ownership Edges into Debtto Edges
%Find all "owndeby" edges
changeOwnership():-
	findall([ID,From],edge(ID,From,_,ownedby,_,_),List),
	multiEdgeConverter(List).
	
%Convert an OwnedBy edge to DebtTo edge
edgeConverter(ID,From):-
	node(From,_,CurrNet,_),
	edge(ID,From,_,ownedby,CurrValue,OriValue),
	NewValue is CurrValue * CurrNet,
	replace(edge(ID,From,To,ownedby,CurrValue,OriValue),
			edge(ID,From,To,debtto,NewValue,NewValue)).
			
%Recursive function for edgeConverter/2
multiEdgeConverter([]).
multiEdgeConverter([H|T]):-
	H = [ID,From],
	edgeConverter(ID,From),
	multiEdgeConverter(T).

%--------------------------------------------------
%For Starting The contagion
%--------------------------------------------------
%All predicate in this section is used to Bankrupt targeted node to 0 NetWorth and start contagion

start(Threshold):-
	(
	Threshold < 0;
	Threshold >= 1
	), !,
	writeln('Threshold is invalid'),
	false.
	
start(Threshold):-
	changeOwnership,
	assert(threshold(Threshold)),
	firstCollapse([sariwangiaea, indorub]).
	
start(_,Threshold):-
	(
	Threshold < 0;
	Threshold >= 1
	), !,
	writeln('Threshold is invalid'),
	false.
	
start(List, Threshold):-
	processOwnership,
	assert(threshold(Threshold)),
	firstCollapse(List).
	
firstCollapse([]).
firstCollapse([NodeName|Tail]):-
	assert(first(NodeName)),
	node(NodeName,_,CurrValue,_),
	changeNode(NodeName,CurrValue),
	firstCollapse(Tail).

%--------------------------------------------------
%Track path of collapse from A to B
%--------------------------------------------------

path0(A,B,Out):-
	travel0(A,[B],Out).
	
travel0(A,[A|B],[A|B]).
travel0(A,[Y|Tail],Out):-
	edge(_,X,Y,_,0,_),
	not(member(X,Tail)),
	travel0(A,[X,Y|Tail],Out).

%Use This
shortest(A,B,Out):-
	setof(C,path0(A,B,C),List),
	findMin(List,inf(),[],Out).
	
findMin([],_,Out,Out).
findMin([H|T],Min,Set,Out):-
	length(H,Len),
	Len > Min,
	findMin(T,Min,Set,Out).
	
findMin([H|T],Min,_,Out):-
	length(H,Len),
	Len < Min,
	findMin(T,Len,H,Out).
	
findMin([H|T],Min,Set,Out):-
	length(H,Len),
	Len = Min,
	findMin(T,Min,[H|Set],Out).


	
	

