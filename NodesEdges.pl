%--------------------------------------------------
%Facts
%--------------------------------------------------

%Nodes
%node( +NodeName, +NodeType, +CurrentNetWorth, +OriginalNetWorth)
:- dynamic node/4.
node(aditirtas, company, 0.05, 0.05).
node(antariksabuana, company, 0.05, 0.05).
node(antarindoo, company, 0.05, 0.05).
node(craroma, company, 0.05, 0.05).
node(fincomsp, company, 0.05, 0.05).
node(gigagalaxy, company, 0.05, 0.05).
node(intidana, company, 0.05, 0.05).
node(mitrauks, company, 0.05, 0.05).
node(murnigalaxy, company, 0.05, 0.05).
node(nirmala, company, 0.05, 0.05).
node(perkasang, company, 0.05, 0.05).
node(primarl, company, 0.05, 0.05).
node(ramadewanw, company, 0.05, 0.05).
node(samudraam, company, 0.05, 0.05).
node(tjigaru, company, 0.05, 0.05).
node(anzbank, financial, 789035.237, 789035.237).
node(asbbank, financial, 72098.387, 72098.387).
node(bankdki, financial, 8.203, 8.203).
node(bankpan, financial, 36.289, 36.289).
node(barclays, financial, 1191588.8, 1191588.8).
node(bca, financial, 131402, 131402).
node(bcc, financial, 2443.795, 2443.795).
node(bni, financial, 100.903, 100.903).
node(boa, financial, 208.994, 208.994).
node(boausa, financial, 3568135.549, 3568135.549).
node(boch, financial, 0.2039939528, 0.2039939528).
node(bocomm, financial, 1399082.79852671, 1399082.79852671).
node(bpdjwb, financial, 10104.975, 10104.975).
node(bprdampit, financial, 0.0001095806, 0.0001095806).
node(briidn, financial, 167347.494, 167347.494).
node(bsmi, financial, 8.756, 8.756).
node(btn, financial, 11593.357, 11593.357).
node(btpn, financial, 17200.797, 17200.797).
node(bwsi, financial, 6106.998, 6106.998).
node(cimbniaga, financial, 36950.996, 36950.996).
node(citibank, financial, 9869.179, 9869.179).
node(commonwealth, financial, 4065.478, 4065.478).
node(commonwealthaus, financial, 665096.2802, 665096.2802).
node(commonwealthhkg, financial, 0, 0).
node(commonwealthltd, financial, 2726.45, 2726.45).
node(commonwealthsgp, financial, 665096.2802, 665096.2802).
node(ctbcidn, financial, 2726.45, 2726.45).
node(danamon, financial, 39172.152, 39172.152).
node(dbs, financial, 8576.804, 8576.804).
node(deutschebank, financial, 2150.956, 2150.956).
node(euinvestment, financial, 1051375.0318545, 1051375.0318545).
node(euroclear, financial, 27646.8084654, 27646.8084654).
node(gbcbank, financial, 761.7078385, 761.7078385).
node(hanaidn, financial, 6220.107, 6220.107).
node(hsbc, financial, 14868.282, 14868.282).
node(icbc, financial, 5754.439, 5754.439).
node(icbcaus, financial, 4435025.11703227, 4435025.11703227).
node(icbcchn, financial, 4435025.11703227, 4435025.11703227).
node(icbcdeu, financial, 4435025.11703227, 4435025.11703227).
node(icbchkg, financial, 4435025.11703227, 4435025.11703227).
node(icbcjpn, financial, 4435025.11703227, 4435025.11703227).
node(icbcltd, financial, 4435025.11703227, 4435025.11703227).
node(icbcsgp, financial, 4435025.11703227, 4435025.11703227).
node(icbcusa, financial, 4435025.11703227, 4435025.11703227).
node(ingbank, financial, 711911.36595, 711911.36595).
node(jpmorgan, financial, 3415163.5545, 3415163.5545).
node(mandiri, financial, 170006.132, 170006.132).
node(maybankidn, financial, 20775.04, 20775.04).
node(mizuho, financial, 8570.254, 8570.254).
node(muamalatidn, financial, 5.545366904, 5.545366904).
node(nabltd, financial, 535669.93865, 535669.93865).
node(nymellon, financial, 555189.6355, 555189.6355).
node(ocbcltd, financial, 395622.15209856, 395622.15209856).
node(ocbcnisp, financial, 21784.354, 21784.354).
node(panindubaisyariah, financial, 0.274196, 0.274196).
node(rabobank, financial, 1802.467, 1802.467).
node(rabobanknld, financial, 635437.4835, 635437.4835).
node(rabobanksgp, financial, 635437.4835, 635437.4835).
node(rabobankua, financial, 635437.4835, 635437.4835).
node(schartered, financial, 691960.1955, 691960.1955).
node(scharteredidn, financial, 59132.955, 59132.955).
node(scharteredjpn, financial, 691960.1955, 691960.1955).
node(smbc, financial, 977368.6322686, 977368.6322686).
node(smbcsgp, financial, 977369.6322686, 977369.6322686).
node(uoverseas, financial, 374242.653108, 374242.653108).
node(ufjleaseltd, financial, 2005323.47666904, 2005323.47666904).
node(ufjleasesgp, financial, 2005324.47666904, 2005324.47666904).
node(uobidn, financial, 10947, 10947).
node(wellsfargo, financial, 2779207.1635, 2779207.1635).
node(westpac, financial, 818593.172, 818593.172).
node(indorub, firstfailure, 0.05, 0.05).
node(sariwangiaea, firstfailure, 0.05, 0.05).
node(bi, government, 0, 0).
node(interbank, interbank, 0, 0).
node(outside, outside, 0, 0).

%Edges
%edge( +ID, +From, +To, +Type, +CurrentValue, +OriginaValue)
:- dynamic edge/6.
edge(0, anzbank, rabobank, debtto, 12.991, 12.991).
edge(1, asbbank, commonwealth, debtto, 2.392, 2.392).
edge(2, bankdki, bca, debtto, 64, 64).
edge(3, bankpan, bca, debtto, 500, 500).
edge(4, barclays, bca, debtto, 37.458, 37.458).
edge(5, bca, rabobank, debtto, 8.369, 8.369).
edge(6, bca, rabobank, debtto, 22.359, 22.359).
edge(7, bni, bca, debtto, 1712.64, 1712.64).
edge(8, boa, bca, debtto, 520, 520).
edge(9, boausa, bca, debtto, 97.296, 97.296).
edge(10, boch, bca, debtto, 354.098, 354.098).
edge(11, bocomm, icbc, debtto, 0.006036, 0.006036).
edge(12, bpdjwb, bca, debtto, 517.716, 517.716).
edge(13, briidn, bca, debtto, 185, 185).
edge(14, bsmi, bca, debtto, 1677.45, 1677.45).
edge(15, btn, bca, debtto, 290.52, 290.52).
edge(16, btpn, bca, debtto, 126.163, 126.163).
edge(17, btpn, bca, debtto, 123.8, 123.8).
edge(18, bwsi, bca, debtto, 142.38, 142.38).
edge(19, cimbniaga, bca, debtto, 352.74, 352.74).
edge(20, citibank, bca, debtto, 377.882, 377.882).
edge(21, commonwealth, bca, debtto, 76.936, 76.936).
edge(22, commonwealth, commonwealthaus, debtto, 137.735, 137.735).
edge(23, commonwealth, commonwealthsgp, debtto, 339.188, 339.188).
edge(24, commonwealth, interbank, debtto, 374.912, 374.912).
edge(25, commonwealthaus, commonwealth, debtto, 32.213, 32.213).
edge(26, commonwealthhkg, commonwealth, debtto, 243.666, 243.666).
edge(27, ctbcidn, bca, debtto, 196, 196).
edge(28, danamon, bca, debtto, 76.289, 76.289).
edge(29, danamon, rabobank, debtto, 0.017, 0.017).
edge(30, dbs, bca, debtto, 773.758, 773.758).
edge(31, deutschebank, bca, debtto, 500, 500).
edge(32, euroclear, bca, debtto, 156.102, 156.102).
edge(33, gbcbank, bca, debtto, 167.019, 167.019).
edge(34, hanaidn, bca, debtto, 341.5, 341.5).
edge(35, hsbc, bca, debtto, 245.527, 245.527).
edge(36, hsbc, rabobank, debtto, 0.552, 0.552).
edge(37, icbc, bca, debtto, 1502.116, 1502.116).
edge(38, icbc, bca, debtto, 50.485, 50.485).
edge(39, icbc, bcc, debtto, 0.509, 0.509).
edge(40, icbc, bprdampit, debtto, 0.65, 0.65).
edge(41, icbc, citibank, debtto, 678.375, 678.375).
edge(42, icbc, icbcaus, debtto, 271.35, 271.35).
edge(43, icbc, icbcchn, debtto, 2007.99, 2007.99).
edge(44, icbc, icbcchn, debtto, 679.375, 679.375).
edge(45, icbc, interbank, debtto, 1954.546, 1954.546).
edge(46, icbcaus, icbc, debtto, 0.01146, 0.01146).
edge(47, icbcchn, icbc, debtto, 0.110909, 0.110909).
edge(48, icbcdeu, icbc, debtto, 0.012523, 0.012523).
edge(49, icbchkg, icbc, debtto, 0.010067, 0.010067).
edge(50, icbchkg, icbc, debtto, 2184.368, 2184.368).
edge(51, icbcjpn, icbc, debtto, 0.001004, 0.001004).
edge(52, icbcsgp, icbc, debtto, 0.061057, 0.061057).
edge(53, icbcsgp, icbc, debtto, 416.728, 416.728).
edge(54, icbcusa, icbc, debtto, 0.022365, 0.022365).
edge(55, ingbank, bca, debtto, 153.101, 153.101).
edge(56, jpmorgan, bca, debtto, 3411.896, 3411.896).
edge(57, jpmorgan, rabobank, debtto, 1.327, 1.327).
edge(58, mandiri, bca, debtto, 380.195, 380.195).
edge(59, mandiri, bca, debtto, 980.76, 980.76).
edge(60, mandiri, rabobank, debtto, 0.38, 0.38).
edge(61, maybankidn, bca, debtto, 11.5, 11.5).
edge(62, mizuho, bca, debtto, 35.851, 35.851).
edge(63, muamalatidn, bca, debtto, 95, 95).
edge(64, nabltd, bca, debtto, 68.696, 68.696).
edge(65, nymellon, bca, debtto, 396.189, 396.189).
edge(66, nymellon, rabobank, debtto, 0.686, 0.686).
edge(67, ocbcltd, bca, debtto, 414.351, 414.351).
edge(68, ocbcnisp, bca, debtto, 84.1, 84.1).
edge(69, panindubaisyariah, bca, debtto, 50, 50).
edge(70, rabobank, bca, debtto, 19.376, 19.376).
edge(71, rabobank, euinvestment, debtto, 14.933, 14.933).
edge(72, rabobank, rabobankua, debtto, 8.48, 8.48).
edge(73, rabobank, interbank, debtto, 8.597, 8.597).
edge(74, rabobanknld, rabobank, debtto, 35.159, 35.159).
edge(75, rabobanknld, rabobank, debtto, 80.047, 80.047).
edge(76, rabobanksgp, rabobank, debtto, 14.246, 14.246).
edge(77, schartered, bca, debtto, 557.195, 557.195).
edge(78, scharteredidn, bca, debtto, 400, 400).
edge(79, scharteredjpn, rabobank, debtto, 8.345, 8.345).
edge(80, smbc, bca, debtto, 253.906, 253.906).
edge(81, smbcsgp, bca, debtto, 381.391, 381.391).
edge(82, uoverseas, bca, debtto, 240.509, 240.509).
edge(83, uoverseas, rabobank, debtto, 6.005, 6.005).
edge(84, ufjleaseltd, bca, debtto, 45.468, 45.468).
edge(85, uobidn, bca, debtto, 100.959, 100.959).
edge(86, wellsfargo, bca, debtto, 607.654, 607.654).
edge(87, westpac, bca, debtto, 87.764, 87.764).
edge(88, indorub, commonwealth, debtto, 215, 215).
edge(89, indorub, icbc, debtto, 50.9, 50.9).
edge(90, indorub, outside, debtto, 45.35, 45.35).
edge(91, sariwangiaea, icbc, debtto, 432, 432).
edge(92, sariwangiaea, rabobank, debtto, 197.5, 197.5).
edge(93, sariwangiaea, ufjleasesgp, debtto, 51.6, 51.6).
edge(94, sariwangiaea, outside, debtto, 45.35, 45.35).
edge(95, bi, bca, debtto, 43472.752, 43472.752).
edge(96, bi, bca, debtto, 9411.567, 9411.567).
edge(97, bi, commonwealth, debtto, 1076.242, 1076.242).
edge(98, bi, commonwealth, debtto, 678.375, 678.375).
edge(99, bi, icbc, debtto, 3888.038, 3888.038).
edge(100, bi, icbc, debtto, 1198.324, 1198.324).
edge(101, bi, rabobank, debtto, 773.094, 773.094).
edge(102, interbank, bca, debtto, 35.633, 35.633).
edge(103, interbank, commonwealth, debtto, 594.73, 594.73).
edge(104, interbank, commonwealth, debtto, 877.074, 877.074).
edge(105, interbank, icbc, debtto, 3079.025, 3079.025).
edge(106, interbank, icbc, debtto, 1335.629, 1335.629).
edge(107, aditirtas, rabobankua, ownedby, 1, 1).
edge(108, antariksabuana, rabobankua, ownedby, 1, 1).
edge(109, antarindoo, rabobankua, ownedby, 1, 1).
edge(110, nirmala, indorub, ownedby, 1, 1).
edge(111, perkasang, indorub, ownedby, 1, 1).
edge(112, tjigaru, indorub, ownedby, 1, 1).
edge(113, commonwealth, fincomsp, ownedby, 0.0004, 0.0004).
edge(114, commonwealth, gigagalaxy, ownedby, 0.0035, 0.0035).
edge(115, commonwealth, murnigalaxy, ownedby, 0.0035, 0.0035).
edge(116, commonwealth, primarl, ownedby, 0.0007, 0.0007).
edge(117, commonwealth, ramadewanw, ownedby, 0.0008, 0.0008).
edge(118, commonwealth, samudraam, ownedby, 0.0011, 0.0011).
edge(119, commonwealth, commonwealthltd, ownedby, 0.99, 0.99).
edge(120, icbc, intidana, ownedby, 0.0139, 0.0139).
edge(121, icbc, icbcltd, ownedby, 0.9861, 0.9861).
edge(122, rabobank, aditirtas, ownedby, 0.08, 0.08).
edge(123, rabobank, antariksabuana, ownedby, 0.04, 0.04).
edge(124, rabobank, antarindoo, ownedby, 0.08, 0.08).
edge(125, rabobank, mitrauks, ownedby, 0.0027, 0.0027).
edge(126, rabobank, rabobankua, ownedby, 0.7973, 0.7973).
edge(127, indorub, sariwangiaea, ownedby, 1, 1).
edge(128, sariwangiaea, craroma, ownedby, 0.7, 0.7).