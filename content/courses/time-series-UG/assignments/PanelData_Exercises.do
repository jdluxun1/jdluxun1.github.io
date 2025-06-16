cd "C:\Users\012461\OneDrive - City University of Macau\Teaching\BAE302\Tutorial\Tutorial6\data"

* Exercise 1
use KIELMC,clear
reg lprice y81 ldist y81ldist
reg lprice y81 ldist y81ldist age agesq rooms baths lintst lland larea

* Exercise 2
use JTRAIN,clear 
tsset fcode year 
gen y89=1
replace y89=0 if year!=1989
reg D.hrsemp y89 D.grant D.grant_1 D.lemploy

gen y88=1
replace y88=0 if year!=1988
xtreg hrsemp y88 y89 grant grant_1 lemploy, fe

* Exercise 3
use rental,clear
tsset city year
reg lrent y90 lpop lavginc pctstu
reg clrent clpop clavginc cpctstu
reg clrent clpop clavginc cpctstu, robust
xtreg lrent y90 lpop lavginc pctstu, fe
