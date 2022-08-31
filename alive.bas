    1 dim v1$(15),v2$(15),v3$(15),v4$(15),v5$(15),v6$(15),m(25)
    2 t=0:tt=0
    3 m(0)=0:m(1)=0:m(2)=1:m(3)=2:m(4)=2:m(5)=3:m(6)=4:m(7)=2:m(8)=2:m(9)=3:m(10)=4:m(11)=5:m(12)=6:m(13)=7:m(14)=8:m(15)=9:m(16)=9:m(17)=10:m(18)=11:m(19)=12
    4 m(20)=13:m(21)=14:m(22)=15
    5 play:tempo 17
    8 envelope 8,0,12,3,7:envelope 1,0,9,9,12,2,2048
    9 rem *** intro wailing ***
   10 v1$(0)="o5t4m9wfffhf"
   20 v2$(0)="o3t5m0sp0cp1o5rcrcrcrcrcrcrcr p0o5crp1o3crcrcrcrcrcrcr p0o4gr p1o2grgrgrgrgrgrgr p0o4er p1o2ererer"
   30 v3$(0)="m1p0t6o1ife#defd#defe#defe#defe#defe#defe#de
   40 v4$(0)="o5t4m9w#f#f#fh#f"
   50 v5$(0)="o3t5m0sp0#cp1o5r#cr#cr#cr#cr#cr#cr#cr p0o5#crp1o3#cr#cr#cr#cr#cr#cr#cr p0o4#gr p1o2#gr#gr#gr#gr#gr#gr#gr p0o4#er p1o2#er#er#er"
   60 v6$(0)="m1t9o6segeg#d#f#d#fdfdf#ce#ce fafae#ge#g#dg#dgd#fd#f gbgb#f#a#f#afafae#ge#g fa#f#afa#f#a"
   70 rem *** first riff ***
   80 v1$(1)="t7p0m1o2qfo3c o2igggggggggggg o2qfo3c o2igggggggggggg"
   90 v2$(1)="t9 p0o6 qfe sgr p2o2grgrgrgrgrgrgrgrgrgrgr":v2$(1)=v2$(1)+v2$(1)
  100 rem  v3$(1)="t7m0o2qfe o1igggggggggggg o2qfe o1igggggggggggg"
  101 v3$(1)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr"
  110 v4$(1)="t7p0m1qo3cg idddddddddddd qo3cg idddddddddddd"
  120 v5$(1)="t9 p0o5qag sbr p1o1brbrbrbrbrbrbrbrbrbrbr":v5$(1)=v5$(1)+v5$(1)
  130 v6$(1)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr"
  140 rem *** i'm alive! ***
  150 v1$(2)="t7m5o5qp0gg grirp7 e#f qgigqg#fe he sede#fe#f hdir"
  160 v2$(2)="t7p0m1o2qfo3c o2qggigqgio3c o2qeeieqeia qccicqcie qdd"
  170 v3$(2)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr"
  180 v4$(2)="t7m5o6qp0fp9sedef qdrir t0o6p0ep8#f qgigqg#fe he sede#fe#f hdir"
  190 v5$(2)="t7p0m1o3qcg ddidqdig o2qbbibqbo3ie o2 qggigqgib qaa
  200 v6$(2)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr"
  210 rem *** seems like forever ***
  220 v1$(3)="t7m5o5qp0idp5scdicso4bo5c qo4bio5cqc t2p0iep5g#f qrr t7m5o5p0idp5scdicso4bo5c qo4bio5cqc t2p0iep5g#f q.r p0t7i#d p7s#dd#de#fe#fghgr"
  230 v2$(3)="t7p0m1o3qdo2#f qaa io3eceqdiddd o3qdo2#f qaa io3eceqdiddd ee#f#f q.eieeeee
  240 v3$(3)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  250 v4$(3)="t0m4o4p0idp8scdicso3bo4c qo3bio4cqc o5t2p0igp5ba qrr t0m4o4p0idp8scdicso3bo4c qo3bio4cqc o5t2p0igp5ba q.r o4p0t0i#dp9s#dd#de#fe#fghgr"
  260 v5$(3)="t7p0m1o3qad ee igeg q#f i#f#f#f qad ee igeg q#f i#f#f#f ggaa q.b ibbbbb"
  270 v6$(3)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  280 rem *** i'm alive (chorus1) ***
  290 v1$(4)="t7m5o5p0qaa p3h.bp1qaq.air qp0aa p3h.bp1qaq.air"
  300 v2$(4)="t7p0m1o3qddigggggggg dddddddd gggggggg dddd"
  310 v3$(4)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  320 v4$(4)="t7m5o6p0qddwdqdr ddwdqdr"
  330 v5$(4)="t7p0m1o3qaa o4idddddddd o3iaaaaaaaa o4dddddddd o3iaaaa"
  340 v6$(4)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  350 rem *** i'm aliveclose(chorus2 ending) ***
  360 v1$(5)="t7m5o5p0qaa hbiab o6co5hbirsap9gababga w.g
  370 v2$(5)="t7p0m1o3qdd gg#f#feeddw.c
  380 v3$(5)="t3o2 ibrbr o1gr gr o2 gr o1 gr gr gr o2 gr o1 gr t0o2p0s#cr o5p1 #cr#cr#cr#cr#cr#cr#cr#cr#cr#cr#cr
  390 v4$(5)="t7m5o5p0q#f#f hgi#fgahgirs#fp9e#fg#fge#f w.c
  400 v5$(5)="t7p0m1o3qaa o4ddcco3bbaaw.g
  410 v6$(5)="t3o2 ibrbr o1gr gr o2 gr o1 gr gr gr o2 gr o1 gr t0o2p0scr o5p1 crcrcrcrcrcrcrcrcrcrcr
  420 rem *** instrumental ***
  430 v1$(6)="t7m5p5o5 qrr r q.g ied o4qb io5deg p0sdo4bo5dedo4bip9g o4ieggeqgie qbo5iddo4bo5qde p9o5r q.giedqesgegeigbo6do5sp0baig
  435 v1$(6)=v1$(6)+"o5qp9ibp0sgbo6ido5sbo6d sp0g#fdo5b o6#fdo5bg p9ibo6cdo5ib
  440 v2$(6)="t7p0m1o2qfo3c o2qggigqgio3c o2qeeieqeia o1qaaiaqaio2e qdd  fo3c o2qggigqgio3c o2qeeieqeia o1qaaiaqaio2e qdd"
  450 v3$(6)="p0t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr":v3$(6)=v3$(6)+v3$(6)
  460 v4$(6)="qrrt2p0so6b#f#afae#g#dgd#f#cfceo5bo6#do5#ao6do5ao6#co5#go6co5gb#f#afae#gdo3scrp2t7o6crcrcrcrcrcrcrcrcrcrcrcrcrgrgr
  465 v4$(6)=v4$(6)+"t6o6p0sdp6o5co3p9co2co5p0sbp6o5co3p9co2co5p0sgp6o5co3p9o1cco5p0sgp6o5co3p9o1cc"
  467 v4$(6)=v4$(6)+"o4p0grp1o2crcrcrcrcrcrcrt0o5p0segegf#gf#g#fa#fagbgbt7o6sgp3o2wc"
  470 v5$(6)="t7p0m1o3qcg ddidqdig o2qbbibqbo3ie qeeieqeig q#f#f  cg ddidqdig o2qbbibqbo3ie qeeieqeig q#f#f"
  480 v6$(6)="p0t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr":v6$(6)=v6$(6)+v6$(6)
  490 rem *** suddenly came the dawn ***
  500 v1$(7)="t7m5o5qp0idp5scdicso4bo5c qo4bio5cqc t2p0iep5g#f qrr t7m5o5p0idp5scdicso4bo5c qo4bio5cqc t2p0iep5g#f q.r p0t7i#d p7s#dd#de#fe#fghg"
  510 v2$(7)="t7p0m1o3qdo2#f qaa io3eceqdiddd o3qdo2#f qaa io3eceqdiddd ee#f#f q.eieeeee
  520 v3$(7)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  530 v4$(7)="t0m4o4p0idp8scdicso3bo4c qo3bio4cqc o5t2p0igp5ba qrr t0m4o4p0idp8scdicso3bo4c qo3bio4cqc o5t2p0igp5ba q.r o4p0t0i#dp9s#dd#de#fe#fghgr"
  540 v5$(7)="t7p0m1o3qad ee igeg q#f i#f#f#f qad ee igeg q#f i#f#f#f ggaa q.b ibbbbb"
  550 v6$(7)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  560 rem *** i'm alive! chorus2 ***
  570 v1$(8)="t7m5o5p0qaa p3hb qbbo6h.#c o51qbq.bir qp0bb p3h.o6#cp1o5qbq.bir"
  580 v2$(8)="t7p0m1o3qddhg qee sarararararararar erererererererer arararararararar erererer"
  590 v3$(8)="t3o2 ibrbr brrr brbr o1s grgrgrgrgrgrgrgrgrgrgrgrgrgrgrgr grgrgrgrgrgrgrgrgrgrgrgr"
  600 v4$(8)="t7m5o6p0qdd hd qee ro5ep9o6eid#co5hb p0o6qee ro5ep9o6eid#co5hb
  610 v5$(8)="t7p0m1o3qaao4hd o3qbb o4serererererererer o3brbrbrbrbrbrbrbr o4erererererererer o3brbrbrbr"
  620 v6$(8)="t3o2 ibrbr brrr brbr o1s grgrgrgrgrgrgrgrgrgrgrgrgrgrgrgr grgrgrgrgrgrgrgrgrgrgrgr"
  630 rem *** i'm alive! verse pitch shift ***
  640 v1$(9)="t7m5o5qp0aa arirp7 #f#g qaiaqa#g#f h#f s#fe#f#g#f#g heir"
  650 v2$(9)="t7p0m1o2qgo3d o2qaaiaqaio3d o2q#f#fi#fq#fib qddidqdi#f qee"
  660 v3$(9)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr"
  670 v4$(9)="t7m5o6qp0gp9s#fd#fg qerir t0o6p0#fp8#g qaiaqa#g#f h#f s#fe#f#g#f#g heir"
  680 v5$(9)="t7p0m1o3qda eeieqeia o3q#c#ci#cq#ci#f o2 qaaiaqaio3#c o2qbb
  690 v6$(9)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr"
  700 rem *** seems like forever ***
  710 v1$(10)="t7m5o5qp0iep5sdeids#co5d q#cio5dqd t2p0i#fp5a#g qrr t7m5o5p0iep5sdeids#cd q#cio5dqd t2p0i#fp5a#g q.r p0t7if p7sfef#f#g#f#gahar"
  720 v2$(10)="t7p0m1o3qeo2#g qbb io3#fd#fqeieee o3qeo2#g qbb io3#fd#fqeieee #f#f#g#g q.#fi#f#f#f#f#f
  730 v3$(10)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  740 v4$(10)="t0m4o4p0iep8sdeids#cd q#cio4dqd o5t2p0iap5o6#co5b qrr t0m4o4p0iep8sdeids#cd q#cio4dqd o5t2p0iap5o6#co5b q.r o4p0t0ifp9sfef#f#g#f#gahar"
  750 v5$(10)="t7p0m1o3qbe #f#f ia#fa q#g i#g#g#g qbe #f#f ia#fa q#g i#g#g#g aabb qo4.#c i#c#c#c#c#c"
  760 v6$(10)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gr o2gr o1gg o2gr o1gg o2gr"
  770 rem *** i'm alive chorus3 ***
  780 v1$(11)="t7m5o5p0qbb p3ho6#c o5ibo6#cdh#cir o5qbb{$a0}p3ho6#c o5ibo6#cdh#cir o5qbb ho6#c o5ibo6#cdh#cir sp9o5babo6#co5bo6#co5ab
  790 v2$(11)="t7p0m1o3qee saeaeaeae #ge#ge#ge#ge #fe#fe#fe#fe ebebebeb saeaeaeae#ge#ge#ge#ge#fe#fe#fe#fe ebebebeb saeaeaeae#ge#ge#ge#ge#fe#fe#fe#fe ebebebeb
  800 v3$(11)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr"
  810 v4$(11)="t7m5o5p0q#g#g p3ha i#gabhair q#g#gha i#gabhair q#g#gha i#gabhair p9s#g#f#ga#f#ge#f
  820 v5$(11)="qt6o4ee o5ip0ae#co4a o5be#co4a o6#co5e#co4a o6eo5b#ge o5ip0ae#co4a o5be#co4a o6#co5e#co4a o6eo5b#ge
  825 v5$(11)=v5$(11)+"o5sp0ae#ceae#ce be#cebe#ce o6#co5e#ceo6#co5e#ce o6eo5b#gbo6eo5b#gb
  830 v6$(11)="t3o2 ibrbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr brbr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr"
  840 rem *** final interlude intro ***
  850 v1$(12)="t8m5o5p0 h.#firs#f#f q.gsggigsrigsrig":v1$(12)=v1$(12)+v1$(12)+v1$(12):v1$(12)=v1$(12)+"h.#firs#f#f q.gsggifsrifsrif"
  860 v2$(12)="t8o3h.dirsdd q.dsddo2iasriasria o3h.dirsdd q.dsddidsridsrid h.dirsdd q.dsddo2iasriasria h.dirsdd q.dsdd o2i#gsri#gsri#g
  870 v3$(12)="t3o2 qbrrirsbb q.bsbbidsridsrid qbrrirsbb q.bsbbidsridsrid o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr idsridsrid"
  880 v4$(12)="m0p0t7o1h.dirsdd q.dsddidsridsrid":v4$(12)=v4$(12)+v4$(12)+v4$(12):v4$(12)=v4$(12)+"h.dirsdd q.dsdd i#gsri#gsri#g
  890 v5$(12)="t8o3h.airsaa q.asaaidsridsrid h.airsaa q.asaaiasriasria h.airsaa q.asaaidsridsrid h.airsaa q.asaa i#csri#csri#c
  900 v6$(12)="t3o2 qbrrirsbb q.bsbbidsridsrid qbrrirsbb q.bsbbidsridsrid o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr idsridsrid"
  910 rem *** final interlude 1 ***
  920 v1$(13)="o5t8w.e qo6idp5sri#csr o5ib h.a irb wb we o6h#c o5a wg r"
  930 v2$(13)="t6o2 iaaaaaaaa aaaaaaaa eeeeeeee eeee t8qgb t6iaaaaaaaa aaaaaaaa eeeeeeee eeee t8qgb"
  940 v3$(13)="t3o2i o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr brbr":v3$(13)=v3$(13)+v3$(13)
  950 v4$(13)="o4t8w.e qo5idp5sri#csr o4ib h.a irb wb we o5h#c o4a wg r"
  960 v5$(13)="t6o3 ieeeeeeee eeeeeeee o2bbbbbbbb bbbbo3 t8qd#f t6io3eeeeeeee eeeeeeee o2bbbbbbbb bbbbo3 t8qd#f
  970 v6$(13)="t3o2i o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr brbr":v6$(13)=v6$(13)+v6$(13)
  980 rem *** final interlude 2 ***
  990 v1$(14)="o6t8w.#c q#cio5bo6#c hd iref heir"
 1000 v2$(14)="t7m0o2 sarararararararar arararararararar #ar#ar#ar#ar#ar#ar#ar#ar t8q.eieqee"
 1010 v3$(14)="t3i o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr brr bbrbr"
 1020 v4$(14)="o5t8w.#c q#cio4bo5#c hd iref heir"
 1030 v5$(14)="t7m0p0o3 serererererererer erererererererer frfrfrfrfrfrfrfr t8o2 q.bibqbb"
 1040 v6$(14)="t3i o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr o1gr o2gr o1gg o2gr brr bbrbr"
 1050 rem *** final i'm alive chorus ***
 1060 v1$(15)="t7m5o5p0 qbb p3o6h.#c o5qbq.bir qp0bb p3h.o6#cp1o5qbq.bir qp0bb p3h.o6#cp1o5qbq.bir qp0bb t1o6hc"
 1070 v2$(15)="so2ao3ao2ao3ao2ao3ao2ao3a o2ao3ao2ao3ao2ao3ao2ao3a o2q.e ieqee":v2$(15)="t7p0m1o2qee"+v2$(15)+v2$(15)+v2$(15)+"p1t1hf"
 1080 v3$(15)="t3i o2brbr o1gr o2gr o1gg o2gr brrb brbr o1gr o2gr o1gg o2gr brrb brbr o1gr o2gr o1gg o2gr brrb brbr o1hg
 1090 v4$(15)="p0t7o5q#g#g p2h.a q#gq.#gir q#g#g h.a q#gq.#gir q#g#g h.a q#gq.#gir q#g#g t1 p1sfho2f
 1100 v5$(15)="qt6o4ee o5ip0ae#co4a o5ip0ae#co4a o5b#geo4b o5b#geo4b o5ip0ae#co4a o5ip0ae#co4a o5b#geo4b o5b#geo4b
 1105 v5$(15)=v5$(15)+"o5sp0ae#ceae#ce ae#ceae#ce b#ge#gb#ge#g b#ge#gb#ge#g o5t1sep1o2he
 1110 v6$(15)="t3i o2brbr o1gr o2gr o1gg o2gr brrb brbr o1gr o2gr o1gg o2gr brrb brbr o1gr o2gr o1gg o2gr brrb brbr o1hg
 4000 t=m(tt)
 4005 play v1$(t),v2$(t),v3$(t):sleep 0.02:play ,,,v4$(t),v5$(t),v6$(t)
 4010 if rplay(1) = 1 then goto 4010
 4020 tt=tt+1:if tt<23 then goto 4000
