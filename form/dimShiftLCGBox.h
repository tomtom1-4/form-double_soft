* Generated by FormCode.nb

id Int(DS(k)*DS(k+p1)*DS(k+p1+p2)*DS(k+p1+p2+p3)*Eik(k)) = -1/2*((-(p3n*s12)+p2n*s13+p1n*(2*s13+s23))*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p2)*DS(k+p1+p2+p3)))/p1n+((-(p3n*s12)+p1n*s23+p2n*(s13+2*s23))*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p2)*Eik(k)))/(2*s23)+((-(p3n*s12*(s12+s13-s23))+p1n*(s12-s13-s23)*s23+p2n*s13*(s13+s23)+p2n*s12*(s13+2*s23))*den(p3n*s12-(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p2+p3)*Eik(k)))/(2*s12*s23)-((p3n*s12-p2n*s13+p1n*s23)*Int(DS(k)*DS(k+p1+p2)*DS(k+p1+p2+p3)*Eik(k)))/(2*p1n*s12*s23)-((p1n*p3n*s12-p2n*p3n*s12+p1n*p2n*s13+p2n^2*s13-p1n*(p1n+p2n)*s23)*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p2)*DS(k+p2+p3)*Eik(k-p1)))/(2*p1n*s12)+((-4+d)*(p3n^2*s12^2+(p2n*s13-p1n*s23)^2-2*p3n*s12*(p2n*s13+p1n*s23))*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p2)*DS(k+p1+p2+p3)*Eik(k),2+d))/(2*p1n*s12*s23);

id Int(DS(k)*DS(k+p2)*DS(k+p1+p2)*DS(k+p1+p2+p3)*Eik(k)) = -1/2*((-(p3n*s12)+p1n*s23+p2n*(s13+2*s23))*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p2)*DS(k+p1+p2)*DS(k+p1+p2+p3)))/p2n+((-(p3n*s12)+p2n*s13+p1n*(2*s13+s23))*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p2)*DS(k+p1+p2)*Eik(k)))/(2*s13)+((p2n*s13*(s12-s13-s23)-p3n*s12*(s12-s13+s23)+p1n*s23*(s13+s23)+p1n*s12*(2*s13+s23))*den(p3n*s12-(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p2)*DS(k+p1+p2+p3)*Eik(k)))/(2*s12*s13)-((p3n*s12+p2n*s13-p1n*s23)*Int(DS(k)*DS(k+p1+p2)*DS(k+p1+p2+p3)*Eik(k)))/(2*p2n*s12*s13)-((-(p1n*p3n*s12)+p2n*p3n*s12-p2n*(p1n+p2n)*s13+p1n^2*s23+p1n*p2n*s23)*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p3)*Eik(k-p2)))/(2*p2n*s12)+((-4+d)*(p3n^2*s12^2+(-(p2n*s13)+p1n*s23)^2-2*p3n*s12*(p2n*s13+p1n*s23))*den(-(p3n*s12)+(p1n+p2n)*(s13+s23))*Int(DS(k)*DS(k+p2)*DS(k+p1+p2)*DS(k+p1+p2+p3)*Eik(k),2+d))/(2*p2n*s12*s13);

id Int(DS(k)*DS(k+p1)*DS(k+p1+p3)*DS(k+p1+p2+p3)*Eik(k)) = -1/2*((p3n*s12-p2n*s13+p1n*(2*s12+s23))*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p3)*DS(k+p1+p2+p3)))/p1n+((-(p2n*s13)+p1n*s23+p3n*(s12+2*s23))*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p3)*Eik(k)))/(2*s23)+((-(p2n*s13*(s12+s13-s23))+p1n*(-s12+s13-s23)*s23+p3n*s12*(s12+s23)+p3n*s13*(s12+2*s23))*den(p2n*s13-(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p2+p3)*Eik(k)))/(2*s13*s23)-((-(p3n*s12)+p2n*s13+p1n*s23)*Int(DS(k)*DS(k+p1+p3)*DS(k+p1+p2+p3)*Eik(k)))/(2*p1n*s13*s23)-((p1n*p3n*s12+p3n^2*s12+p1n*p2n*s13-p2n*p3n*s13-p1n*(p1n+p3n)*s23)*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p3)*DS(k+p2+p3)*Eik(k-p1)))/(2*p1n*s13)+((-4+d)*(p2n^2*s13^2+(p3n*s12-p1n*s23)^2-2*p2n*s13*(p3n*s12+p1n*s23))*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p3)*DS(k+p1+p2+p3)*Eik(k),2+d))/(2*p1n*s13*s23);

id Int(DS(k)*DS(k+p3)*DS(k+p1+p3)*DS(k+p1+p2+p3)*Eik(k)) = -1/2*((-(p2n*s13)+p1n*s23+p3n*(s12+2*s23))*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p3)*DS(k+p1+p3)*DS(k+p1+p2+p3)))/p3n+((p3n*s12-p2n*s13+p1n*(2*s12+s23))*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p3)*DS(k+p1+p3)*Eik(k)))/(2*s12)+((p3n*s12*(-s12+s13-s23)+p1n*s23*(s12+s23)+p1n*s13*(2*s12+s23)-p2n*s13*(-s12+s13+s23))*den(p2n*s13-(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p3)*DS(k+p1+p2+p3)*Eik(k)))/(2*s12*s13)-((p3n*s12+p2n*s13-p1n*s23)*Int(DS(k)*DS(k+p1+p3)*DS(k+p1+p2+p3)*Eik(k)))/(2*p3n*s12*s13)-((-(p3n*(p1n+p3n)*s12)-p1n*p2n*s13+p2n*p3n*s13+p1n^2*s23+p1n*p3n*s23)*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p1)*DS(k+p1+p2)*Eik(k-p3)))/(2*p3n*s13)+((-4+d)*(p2n^2*s13^2+(-(p3n*s12)+p1n*s23)^2-2*p2n*s13*(p3n*s12+p1n*s23))*den(-(p2n*s13)+(p1n+p3n)*(s12+s23))*Int(DS(k)*DS(k+p3)*DS(k+p1+p3)*DS(k+p1+p2+p3)*Eik(k),2+d))/(2*p3n*s12*s13);

id Int(DS(k)*DS(k+p2)*DS(k+p2+p3)*DS(k+p1+p2+p3)*Eik(k)) = -1/2*((p3n*s12+p2n*(2*s12+s13)-p1n*s23)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p2)*DS(k+p2+p3)*DS(k+p1+p2+p3)))/p2n+((p2n*s13+p3n*(s12+2*s13)-p1n*s23)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p2)*DS(k+p2+p3)*Eik(k)))/(2*s13)+((p3n*s12*(s12+s13)+p3n*(s12+2*s13)*s23+p2n*s13*(-s12-s13+s23)-p1n*s23*(s12-s13+s23))*den(-((p2n+p3n)*(s12+s13))+p1n*s23)*Int(DS(k)*DS(k+p2)*DS(k+p1+p2+p3)*Eik(k)))/(2*s13*s23)-((-(p3n*s12)+p2n*s13+p1n*s23)*Int(DS(k)*DS(k+p2+p3)*DS(k+p1+p2+p3)*Eik(k)))/(2*p2n*s13*s23)-((p2n*p3n*s12+p3n^2*s12-p2n*(p2n+p3n)*s13+p1n*p2n*s23-p1n*p3n*s23)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p3)*DS(k+p1+p3)*Eik(k-p2)))/(2*p2n*s23)+((-4+d)*((p3n*s12-p2n*s13)^2-2*p1n*(p3n*s12+p2n*s13)*s23+p1n^2*s23^2)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p2)*DS(k+p2+p3)*DS(k+p1+p2+p3)*Eik(k),2+d))/(2*p2n*s13*s23);

id Int(DS(k)*DS(k+p3)*DS(k+p2+p3)*DS(k+p1+p2+p3)*Eik(k)) = -1/2*((p2n*s13+p3n*(s12+2*s13)-p1n*s23)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p3)*DS(k+p2+p3)*DS(k+p1+p2+p3)))/p3n+((p3n*s12+p2n*(2*s12+s13)-p1n*s23)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p3)*DS(k+p2+p3)*Eik(k)))/(2*s12)+((p2n*s13*(s12+s13)+p2n*(2*s12+s13)*s23+p3n*s12*(-s12-s13+s23)-p1n*s23*(-s12+s13+s23))*den(-((p2n+p3n)*(s12+s13))+p1n*s23)*Int(DS(k)*DS(k+p3)*DS(k+p1+p2+p3)*Eik(k)))/(2*s12*s23)-((p3n*s12-p2n*s13+p1n*s23)*Int(DS(k)*DS(k+p2+p3)*DS(k+p1+p2+p3)*Eik(k)))/(2*p3n*s12*s23)-((-(p3n*(p2n+p3n)*s12)+p2n^2*s13+p2n*p3n*s13-p1n*p2n*s23+p1n*p3n*s23)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p2)*DS(k+p1+p2)*Eik(k-p3)))/(2*p3n*s23)+((-4+d)*((-(p3n*s12)+p2n*s13)^2-2*p1n*(p3n*s12+p2n*s13)*s23+p1n^2*s23^2)*den((p2n+p3n)*(s12+s13)-p1n*s23)*Int(DS(k)*DS(k+p3)*DS(k+p2+p3)*DS(k+p1+p2+p3)*Eik(k),2+d))/(2*p3n*s12*s23);
