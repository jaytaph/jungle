5 print chr$(147)
10 rem *** jungle ***
20 gosub 2000
30 print "plaats:   ";r$(pl,pc)
40 print "je ziet.....":ge=0:cs=0
50 for n=1 to 24: if p(n,1)<>pl or p(n,2)<>pc then 70
60 if f(n)=1 then print o$(n):cs=1: if n>10 and n/2<>int(n/2) then ge=n
70 next n: if cs=0 then print "niets"
80 print "zichtbare uitgangen: ":ve=0:for n=1 to 4
90 if (mid$(e$(pl,pc),n,1)="/" and f(25)=0) or mid$(e$(pl,pc),n,1)=" " then n=4:goto 10
100 print mid$(e$(pl,pc),n,1):ve=1
110 next n:if ve=0 then print "geen"
120 print "wat wil je...?":input a$
130 if a$="stop" then 1070
150 q=1:d$=a$:l=len(a$):for n=1 to l: if mid$(a$, n, 1)<>" " then 170
160 d$=left$(a$,n-1):q=n:n=l
170 next n
180 vg=0:for n=1 to 11: if d$<>v$(n) then 220
190 if d$<>"dood" then 210
200 if mid$(a$, q+1, 3)="met" then d$=d$+"met":q=q+4
210 vg=n:n=12
220 next n
230 if vg=0 then print "ik weet niet hoe dat moet: ";d$:goto 120
240 if vg=1 then 310
250 if q=1 then print "zeg het nog eens. ";d$;" wat?": goto 120
260 w$=right$(a$,l-q)
270 kw=0:for n=1 to 30: if w$<>o$(n) then 290
280 kw=n: n=30
290 next n
300 if kw=0 then print "dit woord ken ik niet: ";w$:goto120
310 on vg gosub 1150,1200,1300,1350,1400,1450,1500,1550,1600,1650,1700
320 if f(25)=1 then f(25)=2:goto 340
330 if f(25)=2 then f(25)=0
340 if r$(pl,pc)="drijfzand" or r$(pl,pc)="moeras" then 1000
350 if pl=1 and pc=1 then 1040
360 if f(20)<>3 and r$(pl,pc)="jungle" then 1040
370 if eu then 1020
380 goto 30

1000 print r$(pl,pc):goto 1060
1020 print "je bent opgegeten.":goto 1060
1040 print "verdwaald.verhongerd"
1060 print "pech gehad. je bent dood."
1070 print "start opnieuw met run."
1080 stop
1150 if pl=2 and pc=8 then e$(2,8)="hnz":return
1160 if pl=3 and pc=6 then e$(3,6)="ow":return
1170 if pl=2 and pc=4 then f(2)=1:return
1180 return

1200 if kw<25 then print "ik kan niet ";w$:return
1210 g$=o$(kw): for n=1 to 4: x$=mid$(e$(pl,pc),n,1)
1215 if x$="/" and f(25)=0 then print "ik zie geen uitgang!":return
1220 if x$<>g$ then 1290
1230 if pc=5 and pl=6 and f(27)=0 then print "deze deur is dicht":return
1235 if pc=5 and pl=4 and f(26)=0 then print "deze deur is dicht":return
1240 pc=pc+(g$="w")-(g$="o")
1250 pl=pl+(g$="n")-(g$="z")
1260 if g$="h" then pc=pc+(pl<4):pl=pl-(pl>3)
1270 if g$="l" then pc=pc-(pl=2 or pl=4): pl=pl+(pl=3 or pl>4)
1280 n=4: next n:return
1290 next n: print "ik kan daar niet heen.": return

1300 if kw>22 then print "dat is onzin!!":return
1310 if kw>10 and kw/2<>int(kw/2) then print "je kunt een ";w$;" niet pakken":return
1320 if kw=1 then print "je kunt een ";w$;" niet pakken":return
1330 if f(kw)=3 then print "je hebt de ";w$;" al!":return
1335 if pl<>p(kw,1) or pc<>p(kw,2) or f(kw)=0 then print "dat zie ik niet": return
1340 f(kw)=3:return

1350 if kw>10 or ge=0 or ge=15 or ge=23 then print "geef wat aan wie?":return
1360 if f(kw)<>3 then print "je hebt helemaal geen ";w$:return
1370 if ge>12 and kw>2 and kw<9 then 1390
1380 if ge=11 and kw=10 then 1390
1385 return
1390 f(ge)=0:f(ge+1)=3:print "de ";o$(ge);" zegt dank je wel."
1395 print "hij geeft je de ";o$(ge+1);" en gaat weg.":return

1400 if pl<>4 or pc<>5 then print "daar heb je niets aan.":return
1410 if kw<>14 then print w$;" zeggen heeft geen zin":return
1420 if f(14)<>3 then print "je kent het woord niet.":return
1430 f(25)=1:print " in de oostelijke muur gaat een deur open.": return

1450 if pc<>5 or f(25)=0 then 1490
1460 if pl=6 and f(2)=3 then  f(27)=1:print "de deur is open":return
1470 if pl=6 and f(2)<>3 then print "je hebt de sleutel niet": return
1480 if pl=4 and f(26)<>1 then print "je hebt het woord niet gezegd.":return
1490 print "welke deur?":return

1500 if kw=10 and f(10)=3 then f(10)=1:print "yum yum":return
1510 if kw=21 and ge=21 then f(22)=1:f(21)=0:print "burp! wat hebben we hier!"
1520 if f(kw)<>3 then print "dat mag je niet opeten.":return
1530 if kw<>21 then print "yuk!"
1540 return

1550 if kw<>23 then print "je kunt een ";w$;" niet aansteken":return
1560 if f(8)<>3 then print "je moet lucifers hebben.":return
1570 if f(22)<>3 then print "je moet de fakkel hebben.":return
1580 f(25)=1:print "hij brandt - maar niet lang.":return

1600 if f(20)<> 3 then print "Geen bijl. niet kappen.":return
1610 if kw<>1 then printje kunt de ";w$;" niet hakken":return
1620 f(25)=1:print "nu kun je wat zien.":return

1650 if pl<>8 or (pc<>6 and pc<>7) then 1680
1660 if f(7)<>3 then print "je moet een boot hebben.":return
1670 print "veilig overgestoken.":pc=7+(pc=7):return
1680 print "kruis wat? ":return

1700 if kw<>3 and kw<>12 and kw<>20 then print "daarmee kun je niet doden!":return
1710 if ge=0 then 1760
1720 if ge=11 or ge=13 or ge=17 or ge=19 then 1760
1730 if ge=15 and kw=12 then goto 1770
1740 if rnd(0)>.6 then print "mis!":eu=1:return
1750 print "je hebt hem gedood!":f(ge)=0:return
1760 f(ge)=0:print "een beetje onnodig. maar hij is dood.":return
1770 print "hij is dood en je hebt de verloren kroon "
1775 print "van umbamajini gevonden": goto 1070

2000 rem opstartroutine
2010 dim r$(8,8): dim e$(8,8): dim o$(30): dim p(27,2): dim v$(11): dim f(27)
2020 for n=1 to 8: for t=1 to 8: read r$(n,t),e$(n,t):next t:next n
2030 data woestijn,,woestijn,wz,open plek,oz,jungle,/owz
2035 data moeras,,jungle,/owz,vlakte,wo,lage heuvel,wz
2040 data woestijn,no,woestijn,wno,vlakte,nzw,ruine,no
2045 data jungle,/nl,rotswand,hln,rotspad,hlz,heuvelhelling,hn/z
2050 data port bata,oz,oude straat,ozw,stadsrand,nzw,doorgang,/onz
2055 data trap,/hl,grot,o/w,rotspad,nzw,hut,n
2060 data strand,noz,duinen,nzw,moeras,,geheime nis,/no
2065 data tempelruimte,/hwo,heilige der heiligen,w,rotspunt,lnz,moeras,
2070 data drijfzand,,vlakte,nozw,jungle,/now,plantage,wz
2075 data tempelportaal,z/ol,priesterkamer,/w,rotspad,noz,rotsrichel,hlw
2080 data strand,noz,dorp ubimbi,nozw,winkel,wz,jungle,/noz
2085 data jungle,/now,open plek,wo,berg,lzw,bergpas,lz
2090 data strand,nz,straat,nz,erf,n,jungle,/noz
2095 data vlakte,ozw,meer,ow,groot nest,nozw,jungle,/wn
2100 data jungle,/no,dorpsgrens,now,vlakte,ow,vlakte,now
2105 data jungle,/now,westelijke oever,w,oostelijke oever,no,dorp weetu,w
2110 for n=1 to 30:read o$(n)
2115 if n<=27 then read p(n,1),p(n,2),f(n)
2120 next n
2130 data jungle,0,0,1,sleutel,2,4,0,geweer,3,1,1,kralen,7,2,1,kleren,3,3,1
2140 data geld,3,1,1,boot,4,1,1,lucifers,3,2,1,rivier,8,6,1
2150 data bananen,5,4,1,gorilla,7,7,1,stok,7,7,0
2160 data kluizenaar,3,8,1,woord,3,8,0,slang,4,6,1,kroon,4,6,0
2170 data medicijnman,6,2,1,toverdrank,6,2,0,winkelier,6,3,1,bijl,6,3,0
2180 data kannibaal,8,8,1,fakkel,8,8,0,leeuw,6,6,1,deur,6,5,1
2185 data h,,,0,l,,,0,n,,,5,o,z,w
2190 for n=1 to 11: read v$(n): next n
2200 data kijk,ga,neem,geef,zeg,open,eet,ontsteek,kap,kruis,dood
2210 pl=3:pc=1:eu=0
2220 return

