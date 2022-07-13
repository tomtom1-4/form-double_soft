id Int(DS(k)*DS(k+p3)*DS(k+p2+p3)*DS(k+p1+p2+p3)) = Int(DS(-k)*DS(-(k+p3))*DS(-(k+p2+p3))*DS(-(k+p1+p2+p3)))*replace_(k,-k-p1-p2-p3);
id Int(DS(k)*DS(k+p3)*DS(k+p1+p3)*DS(k+p1+p2+p3)) = Int(DS(-k)*DS(-(k+p3))*DS(-(k+p1+p3))*DS(-(k+p1+p2+p3)))*replace_(k,-k-p1-p2-p3);
id Int(DS(k)*DS(k+p2)*DS(k+p2+p3)*DS(k+p1+p2+p3)) = Int(DS(-k)*DS(-(k+p2))*DS(-(k+p2+p3))*DS(-(k+p1+p2+p3)))*replace_(k,-k-p1-p2-p3);

id Int(DS(k)*DS(k+p1+p2)*Eik(k+p2)) = -Int(DS(-k)*DS(-(k+p1+p2))*Eik(-(k+p2)))*replace_(k,-k-p1-p2);
id Int(DS(k)*DS(k+p1+p3)*Eik(k+p3)) = -Int(DS(-k)*DS(-(k+p1+p3))*Eik(-(k+p3)))*replace_(k,-k-p1-p3);
id Int(DS(k)*DS(k+p2+p3)*Eik(k+p3)) = -Int(DS(-k)*DS(-(k+p2+p3))*Eik(-(k+p3)))*replace_(k,-k-p2-p3);
