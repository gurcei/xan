    1 play
    2 t=0:tt=0
    3 dim m(10)
    4 m(0)=0:m(1)=1
   10 dim v1$(10),v2$(10),v3$(10)
   11 envelope 2,3,3,3,10,0
   12 filter 1,100,1:filter 2,100,1:envelope 7,0,9,9,0,2,1100
   13 envelope 4,9,4,9,8
   20 rem *** voice1 ***
   30 v1$(0)="t2o6m2 qdir qc.r qdir qc.r qdir qc.r qdir qc.r"
   40 v1$(1)="t2o6m2 qdir qc.r qdir qc.r qdir qc.r qdir qc.r"
  200 rem *** voice2 ***
  210 v2$(0)="t2o5m4 qair q#g.r qair q#g.r qair q#g.r qair q#g.r"
  220 v2$(1)="t2o5m4 qair q#g.r qair q#g.r qair q#g.r qair q#g.r"
  400 rem *** voice3 ***
  410 v3$(0)="x1t7o2m1 id qr p1 icd qr icd sf#f qd ir o1ao2co1a   o2id qr p1 icd qr icd sf#f qd ir o1ao2co1a"
  420 v3$(1)="x1t7o2m1 id qr p1 icd qr icd sf#f qd ir o1ao2co1a   o2id qr p1 icd qr icd sf#f qd ir o1ao2co1a"
  600 rem *** voice4 ***
  610 v4$(0)=""
  620 v4$(1)="t4o5p0 qr m2id m4qd p5 m1o4#g h.a iaqa   o5q.e h#f ir #f#fa qg ig#f w m9 .g p9m2o4ia o5i.b.a sg#f agabab qg o4iab o5q.#f sg#f q.e.d"
 2000 rem *** play loop ***
 2010 t=m(tt)
 2020 play v1$(t),v3$(t),v4$(t):sleep 0.05:play ,,,v2$(t),v3$(t),v4$(t)
 2030 if rplay(1) = 1 then goto 2030
 2040 tt=tt+1:if tt<2 then goto 2000
 2050 end
 4000 play "c","c","c",""