    1 play
    2 t=0:tt=0
    3 dim m(10)
    4 m(0)=0:m(1)=1:m(2)=1:m(3)=2:m(4)=3
   10 dim v1$(10),v2$(10),v3$(10)
   11 envelope 2,3,3,3,10,0
   12 filter 1,100,1:filter 2,100,1:envelope 7,0,9,9,0,2,1100
   13 envelope 4,9,4,9,8
   14 envelope 8,0,12,3,5,2,1100:envelope 9,0,10,3,5,2,1100
   20 rem *** voice1 - guitar1 ***
   30 v1$(0)="t2o6m2 qdir qc.r qdir qc.r qdir qc.r qdir qc.r"
   40 v1$(1)="t2o6m2 qdir qc.r qdir qc.r p9a ir qair p0idp9o5a o5iao6da q.g ido5a ibo6dg q.a igd o5bo6eg q.a ige o5ibo6dg q.a igd  o5bo6egqa ig#fe "
   50 v1$(2)="t2o6m2 qdir qc.r qdir qc.r  iddfq.difd o5q.#aho6cir o5#aq#ao6hcir iddfhdir  ddfq.difd o5q.#aho6cir o5#aq#ao6hcir o5q.a o6he ir
   60 v1$(3)="t2o6m2 igg#ghgir o5q.g o6hd ir aa#aha ir a o6d #f qe i#f qd  q.#f.edo6.g.#fe o5g i#a o6 qe o5i#a o6qe qdir qc.r qdir qc.r
   70 v1$(3)=v1$(3)+"o6q.g.#fe o5g i#a o6qe o5i#a o6qe qdir qc.r qdir qc.r qdir qc.r qdir qc.r"
  200 rem *** voice2 - guitar2 ***
  210 v2$(0)="t2o5m4 qair q#g.r qair q#g.r qair q#g.r qair q#g.r"
  220 v2$(1)="t2o5m4 qair q#g.r qair q#g.r  o5 q.#c .d o6i#fd o5d#fao6q.d io5a#f  egbo6q.e o5ibg eao6#cq.e i#co5a egbo6q.e o5ibg eao6#cqe id#cd"
  230 v2$(2)="t2o5m4 qair q#g.r qair q#g.r"
  400 rem *** voice3 - bass ***
  410 v3$(0)="x1t7o2m1 id qr p1 icd qr icd sf#f qd ir o1ao2co1a   o2id qr p1 icd qr icd sf#f qd ir o1ao2co1a"
  420 v3$(1)="x1t7o2m1 id qr p1 icd qr icd sf#f qd qr ir o1a t8 o2q.#cqd ide#f q.#f o1a ia o2q#c o1q.e e iebg q.a a ia o2qc q.e e ie o1 qb q.a a o2ie qa"
  430 v3$(2)="x1t7o2m1 id qr p1 icd qr icd sf#f qd ir o1ao2co1a"
  440 v3$(2)=v3$(2)+"t9o2idddddddd o1#a#a#a#a#a#a#a#a #a#a#a#a#a#a#a#a o2ddfqdiddddddddddd o1#a#a#a#a#a#a#a#a #a#a#a t8o2qciccc o1q.aaiaaa"
  450 v3$(3)="o2q.ddiddd o1q.ggi#aa#a q.#a#ai#aq#a q.aaiaqa o2q.ddio1go2qd q.eeieqe o1q.aaiaqa t7o2 id qr p1 icd qr icd sf#f qd ir o1ao2co1a"
  460 v3$(3)=v3$(3)+"o2q.eeieqe o1q.aaiaqa t7o2 id qr p1 icd qr icd sf#f qd ir o1ao2co1a  t7o2 id qr p1 icd qr icd sf#f qd ir o1ao2co1a"
  600 rem *** voice4 - melody ***
  610 v4$(0)=""
  620 v4$(1)="t4o5p0 qr m2id m4qd p5 m1o4#g h.a iaqa   o5q.e h#f ir #f#fa qg ig#f w m5 .g p9m2o4ia o5i.b.a sg#f agabab qg o4iab o5h#f sg#f q.e.d"
  630 v4$(2)="o5t4p7wdhrq.ricp5o5iddfq.gifdq.fsedhciffaqgifdscp2h.dp5i.ricddfq.gifd q.f sed hc iffaqgifd igp1h.a p7ira"
  635 v4$(3)="t4 io6dd#dqdico5#ah.#aq.r iaa#aqaiagp1wap7ir"
  640 v4$(3)=v4$(3)+"hri#fgaq.gi#fg#fherir dhdrr ir#fgaq.gi#fg#fherir dhd"
 2000 rem *** play loop ***
 2010 t=m(tt)
 2020 play v1$(t),v3$(t),v4$(t):sleep 0.05:play ,,,v2$(t),v3$(t),v4$(t)
 2030 if rplay(1) = 1 then goto 2030
 2040 tt=tt+1:if tt<5 then goto 2000
 2050 end
 4000 play "c","c","c",""
