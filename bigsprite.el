#OUTPUT "BIGSPRITE"#DEFINE ��������=1'============.DECLARATIONS'============  ' MUSIC RELATED VARS  ' ------------------  #DECLARE MUSIC�CHUNK�INDEX     ' OLD T  #DECLARE BAR�INDEX             ' OLD TT  #DECLARE MAP�BAR�TO�CHUNK(25)  ' OLD M()  #DECLARE V1$(15), V2$(15), V3$(15), V4$(15), V5$(15), V6$(15)  ' PALETTE  ' -------  #DECLARE DEFAULT�RED(32)  #DECLARE DEFAULT�GREEN(32)  #DECLARE DEFAULT�BLUE(32)  #DECLARE CURR�RED(32)  #DECLARE CURR�GREEN(32)  #DECLARE CURR�BLUE(32)  #DECLARE FADEVAL, TEMPVAL  #DECLARE GREY  #DECLARE TEMPR, TEMPG, TEMPB  #DECLARE VEL=1,DIST=0  ' MISC  '-----  #DECLARE A$ = ""  #DECLARE IDX = 0  #DECLARE VALUE = 0  #DECLARE LOC  #DECLARE K  #DECLARE SPRITE�FRAME�IDX(8)  #DECLARE SPRITE�X(8)  #DECLARE SPRITE�Y(8)  #DECLARE STATE = 0  #DECLARE COUNTER = 0  #DECLARE DEFCOLVAL = 0, DEFCOLDIR=1, ALTCOLVAL = 0, ALTCOLDIR=1  #DECLARE STARTCOL, ENDCOL  #DECLARE CURR�MUSE = 0#DECLARE THANK�STATE = 0#DECLARE THANK�IDX = 0#DECLARE S$,SX,SY#DECLARE THANK1$(15)THANK1$(0)="A BIG THANK YOU TO THE CORE MEGA65 TEAM FOR ALL THEIR EFFORTS OVER THE YEARS!"THANK1$(1)="HIGHLANDER"THANK1$(2)="DEFT"THANK1$(3)="SERIOUSLY"THANK1$(4)="ADTBM"THANK1$(5)="FALK/BLUEWAYWS"THANK1$(6)="ANTTI-BRAIN"THANK1$(7)="DOUBLEFLASH"THANK1$(8)="BIT SHIFTER"THANK1$(9)="LGB"THANK1$(10)="SY2002"THANK1$(11)="TAYGER"THANK1$(12)="LYDON"THANK1$(13)="M3WP"THANK1$(14)="FERALCHILD"THANK1$(15)="INDIOCOLIFA"#DECLARE THANK2$(16)THANK2$(0)="EXTRA SHOUT OUTS TO:"THANK2$(1)="TRENZ ELECTRONICS AND THE MOULDS TEAM!"THANK2$(2)="DEATHY FOR ALL YOUR PASSION AND DEDICATION TO THE MEGA65!"THANK2$(3)="BIT SHIFTER FOR ALL THE GREAT BASIC 65 ENHANCEMENTS!"THANK2$(4)="LYDON FOR ALL YOUR EFFORTS PREPARING BATCH#2!"THANK2$(5)="SY2002, MJOERGEN AND LYDON FOR ALL THE ADDITIONAL CORES!"THANK2$(6)="DDDAAANNN FOR ALL YOUR DOCUMENTATION, TOOLING AND COMMUNITY-BUILDING!"THANK2$(7)="TAYGER FOR MEGA65CONNECT AND THE 'FILES.MEGA65.ORG' FILEHOST!"THANK2$(8)="IMPAKT FOR THE DETERMINED AND THOROUGH MANUAL PROOF-READING!"THANK2$(9)="THECHIEF FOR YOUR EFFORTS SUPPORTING THE NEXYS BOARD!"THANK2$(10)="HOJO FOR THE AWESOME NEW FRONT COVERS YOU MADE FOR ALL OUR MANUALS!"THANK2$(11)="AMOK FOR ALL YOUR DOCUMENTATION EFFORTS!"THANK2$(12)="UBIK FOR THE AWESOME ELEVEN IDE!"THANK2$(13)="MAURICE FOR TESTING EVERY SINGLE BASIC 65 EXAMPLE IN THE MANUAL!"THANK2$(14)="RETROCOMBS, PERIFRACTIC AND RB-JEFFREY FOR YOUR AWESOME YOUTUBE VIDS!"THANK2$(15)="MINDRAIL FOR THE MACGUYVER-JTAG VIDEO!"THANK2$(16)="DEFT AND ADTBM FOR ALL YOUR 'HELLO MEGA65 COMMUNITY' VIDEOS!"#DECLARE THANK3$(60)THANK3$(0)="THANKS TO ALL THE 1ST GEN DEVELOPERS THAT MADE DEMOS, UTILITIES AND GAMES!"THANK3$(1)="ADTBM"THANK3$(2)="AIRJURI"THANK3$(3)="AKMAFIN"THANK3$(4)="AMOK"THANK3$(5)="DDDAAANNN"THANK3$(6)="DEATHY"THANK3$(7)="DEFT"THANK3$(8)="DEXTROUS"THANK3$(9)="DILLOF"THANK3$(10)="DIRK"THANK3$(11)="DOCSTER"THANK3$(12)="EGONOLSEN71"THANK3$(13)="ELCH"THANK3$(14)="ENDURION"THANK3$(15)="FERALCHILD"THANK3$(16)="FREDRIKR"THANK3$(17)="GEEHAF"THANK3$(18)="GEIRS"THANK3$(19)="GRIM-FANDANGO"THANK3$(20)="GRUBI"THANK3$(21)="HEATH-MAN"THANK3$(22)="HERNANDP"THANK3$(23)="HSTAMPFL"THANK3$(24)="JAMES"THANK3$(25)="JESPERGRAVGAARD"THANK3$(26)="JOHAN"THANK3$(27)="JOHNWAYNER"THANK3$(28)="KIDRA"THANK3$(29)="KITHKANAN"THANK3$(30)="KRYAN1"THANK3$(31)="LAK132"THANK3$(32)="LIQUIDDREAM"THANK3$(33)="LYDON"THANK3$(34)="M3WP"THANK3$(35)="MAJIKEYRIC"THANK3$(36)="MAURICE"THANK3$(37)="MAXICE"THANK3$(38)="MC64"THANK3$(39)="MIGHTYAXLE"THANK3$(40)="MR.TOAST"THANK3$(41)="MTEUFEL"THANK3$(42)="N1K0M0"THANK3$(43)="NEOMAN"THANK3$(44)="OZIPHANTOM"THANK3$(45)="RETROCOMBS"THANK3$(46)="SHALLAN50K"THANK3$(47)="SNOOPY"THANK3$(48)="STEPZ"THANK3$(49)="STIGODUMP"THANK3$(50)="SY2002"THANK3$(51)="TAYGER"THANK3$(52)="THECHIEF"THANK3$(53)="UBIK"THANK3$(54)="URBANL"THANK3$(55)="WAULOK"THANK3$(56)="WOMBAT"THANK3$(57)="ZEHA"THANK3$(58)="ZZSILA"THANK3$(59)=""THANK3$(60)=""#DECLARE MUSE�STATE = 0#DECLARE NEXT�SPR = 1#DECLARE NEXT�FRM = 0#DECLARE NEXT�CNT = 0#DECLARE SPR�ACTIVE(8)#DECLARE SPR�ANGLE = 0#DECLARE GREYS(3)GREYS(0)=15:GREYS(1)=12:GREYS(2)=11#DECLARE MUSE�CLR(9)MUSE�CLR(0)=16MUSE�CLR(1)=18MUSE�CLR(2)=20MUSE�CLR(3)=22MUSE�CLR(4)=25MUSE�CLR(5)=26MUSE�CLR(6)=28MUSE�CLR(7)=29MUSE�CLR(8)=31#DECLARE THANK�START�IDX  #DECLARE ����64�� = $D057  #DECLARE �������� = $D055  #DECLARE ������   = $D056  #DECLARE ���������� = $D060  #DECLARE ���������� = $D062  #DECLARE ������16 = $D06E  #DECLARE ��������� = $D06C  #DECLARE ��������� = $D06E  #DECLARE �����ǯ7 = $D05D'----.MAIN'----  GOSUB INIT�DEFAULT�COLOURS  GOSUB INIT�MUSIC  GOSUB P1�DROP�PAPERS  'GOSUB P2�COLOUR�CYCLE�STATIC�MUSES  'GOSUB P3�ANIMATE�MUSE1�2�3�4  'GOSUB P4�PULSE�BACKGROUND�MURAL�TO�CHORUS  'GOSUB P5�ANIMATE�MUSE�5�6�7�8�9  'GOSUB P6�PULSE�BACKGROUND�MURAL�2ND�TIME  GOSUB P7�BIG�OLIVIA�WITH�SPRITES  'GOSUB P8�MUSES�RETURN�TO�PETSCII�MURAL  'GOSUB P9�PULSE�BACKGROUND�MURAL�3RD�TIME  'GOSUB P10�PETSCII�DANCERS�COME�TO�LIFE  'GOSUB P11�EXPANDED�OR�TILED�SPRITES  'GOSUB P12�MUSES�DANCING�IN�CIRCLE  'GOSUB P13�HOLLYWOOD�DASH  'GOSUB P14�FINALE.INIT�DEFAULT�COLOURS'--------------------#DECLARE DEBUG�FLAG = 0  IF PEEK($D020)<>0 AND PEEK($D020)<>2 THEN BEGIN    BORDER 0    POKE $D018, PEEK($D018) AND $FD    EDMA 0, $300, $FFD3100, $48000    EDMA 3, $300, 0, $FFD3100    ^^BLOAD "MURAL.BIN",P($800),R    ^^BLOAD "MURAL.CLR",P($1F800),R    DEBUG�FLAG = 1  BEND  FOR K = 0 TO 31    DEFAULT�RED(K) = PEEK($48000+K)    DEFAULT�GREEN(K) = PEEK($48100+K)    DEFAULT�BLUE(K) = PEEK($48200+K)  NEXT K  IF DEBUG�FLAG=1 THEN BEGIN    ^^BLOAD "MURAL.BIN",P($48000),R    ^^BLOAD "MURAL.CLR",P($49000),R  BEND  RETURN.FADE�COLOURS�TO�GREY'--------------------'�����: FADEVAL = 0 TO 16  TEMPVAL = (16-FADEVAL) / 16  FOR K = 0 TO 31    GREY = (DEFAULT�RED(K) + DEFAULT�GREEN(K) + DEFAULT�BLUE(K)) / 3    POKE $D100+K, INT(GREY + (CURR�RED(K) - GREY) * TEMPVAL)    POKE $D200+K, INT(GREY + (CURR�GREEN(K) - GREY) * TEMPVAL)    POKE $D300+K, INT(GREY + (CURR�BLUE(K) - GREY) * TEMPVAL)  NEXT K  RETURN.FADE�COLOURS�TO�DEFAULTS'------------------------  '�����: FADEVAL=0 TO 16  TEMPVAL = FADEVAL / 16  FOR K = STARTCOL TO ENDCOL    POKE $D100+K, CURR�RED(K) + (DEFAULT�RED(K)-CURR�RED(K)) * TEMPVAL    POKE $D200+K, CURR�GREEN(K) + (DEFAULT�GREEN(K)-CURR�GREEN(K)) * TEMPVAL    POKE $D300+K, CURR�BLUE(K) + (DEFAULT�BLUE(K)-CURR�BLUE(K)) * TEMPVAL  NEXT K  RETURN.FADE�COLOURS�TO�BLACK'---------------------  '�����: FADEVAL=0 TO 16  TEMPVAL = (16-FADEVAL) / 16  FOR K = STARTCOL TO ENDCOL    POKE $D100+K, CURR�RED(K) * TEMPVAL    POKE $D200+K, CURR�GREEN(K) * TEMPVAL    POKE $D300+K, CURR�BLUE(K) * TEMPVAL  NEXT K  RETURN'==============.P1�DROP�PAPERS'==============  GOSUB P1�INIT  GOSUB P1�LOOP  GOSUB P1�ENDER  RETURN.P1�INIT'-------  ' LOAD 13 STANDARD SPRITES FOR PAPER  ^^BLOAD "PAPER.DAT",P($47C40),R  ' LOAD 64X64 SPRITE DATA  ^^BLOAD "MUSE.DAT",P($40040),R  ' LOAD OLI FRAMES TO BANK 5  ^^BLOAD "OLI.DAT",P($50000),R  ' DISABLE ANY 64-BIT WIDE SPRITES  POKE ����64��, 0  ' ALL SPRITES NORMAL HEIGHT  POKE ��������, 0  ' ENFORCE SPRITES INTO ����4 AND ������16 BIT TURNED ON  POKE ���������, 4+128  WPOKE ���������, 0  ' PREPARE ALL SPRITE  FOR K = 0 TO 7    SPRITE�FRAME�IDX(K) = INT(RND(1)*13)    SPRITE�X(K) = 30+40*K    SPRITE�Y(K) = INT(RND(1)*5)*5    SPRITE K, 1, 15    MOVSPR K, 0#0    MOVSPR K, SPRITE�X(K), SPRITE�Y(K)    WPOKE ($40000+K*2), $11F1 + SPRITE�FRAME�IDX(K)  NEXT K  FADEVAL = 0  RETURN.STORE�CURR�COLOURS'------------------  FOR K = 0 TO 31    CURR�RED(K)=PEEK($D100+K)    CURR�GREEN(K)=PEEK($D200+K)    CURR�BLUE(K)=PEEK($D300+K)  NEXT K  RETURN.P1�LOOP'-------  ' DROP PAPER SPRITES DOWN  IF STATE < 4 AND MUSE�STATE=0 THEN BEGIN    FOR K = 0 TO 7      IF INT(RND(1)*3) = 0 THEN BEGIN        SPRITE�FRAME�IDX(K) = MOD(SPRITE�FRAME�IDX(K)+1,13)      BEND      IF SPRITE�Y(K) < 247 THEN BEGIN        SPRITE�Y(K) = SPRITE�Y(K) + INT(RND(1)*3)        SPRITE�X(K) = SPRITE�X(K) + INT(RND(1)*5)-2        MOVSPR K, SPRITE�X(K), SPRITE�Y(K)        WPOKE ($40000+K*2), $11F1 + SPRITE�FRAME�IDX(K)      BEND    NEXT K  BEND  GOSUB POLL�PLAY  SLEEP .025  ' FADE IN TO GREY  ' ---------------  IF STATE = 0 THEN BEGIN    IF MOD(COUNTER,5)=0 THEN BEGIN      GOSUB FADE�COLOURS�TO�GREY      FADEVAL = FADEVAL + 1      IF FADEVAL > 16 THEN STATE = STATE + 1:FADEVAL = 0:GOSUB STORE�CURR�COLOURS:COUNTER=0    BEND    COUNTER = COUNTER + 1  BEND  ' EBB-FADE TO COLOURS FOR DEFAULT PALETTE  ' ---------------------------------------  IF STATE = 1 THEN BEGIN    FADEVAL = DEFCOLVAL    STARTCOL = 0:ENDCOL = 15    IF COUNTER > 3 THEN ENDCOL = 31    GOSUB FADE�COLOURS�TO�DEFAULTS    DEFCOLVAL = DEFCOLVAL + DEFCOLDIR    IF DEFCOLVAL = 16 THEN DEFCOLDIR=-1    IF DEFCOLVAL = 0 THEN DEFCOLDIR=1:COUNTER=COUNTER+1    IF COUNTER = 6 AND DEFCOLVAL = 15 AND DEFCOLDIR=-1 THEN STATE=STATE+1:COUNTER=0  BEND  ' COLOUR-CYCLE MUSES  ' ------------------  IF STATE = 2 THEN BEGIN    DIST = DIST + VEL    IF DIST >= 1 THEN BEGIN      DIST = DIST - 1      COUNTER = COUNTER + 1      STARTCOL = 16:ENDCOL = 31      GOSUB CYCLE�COLOURS      IF COUNTER > 16*2 THEN VEL=VEL*.93      IF COUNTER = 16*3-1 THEN STATE = 3:PALETTE RESTORE:COUNTER=0:DEFCOLVAL=0:DEFCOLDIR=2    BEND  BEND  IF STATE = 3 THEN GOSUB HIGHLIGHT�CURR�MUSE  IF STATE = 4 THEN GOSUB FADE�OUT  IF STATE = 5 THEN GOSUB FADE�OUT  IF STATE = 6 THEN GOSUB FOCUS�MUSE  GET A$:IF A$="" THEN GOTO P1�LOOP  RETURN.FOCUS�MUSE'----------  IF MUSE�STATE = 0 THEN BEGIN    GOSUB INIT�MUSE�SPRITES    MUSE�STATE=1    COUNTER = 0    PRINT "�";    RETURN  BEND  IF MUSE�STATE = 1 THEN BEGIN    FADEVAL=COUNTER    GOSUB FADE�COLOURS�TO�DEFAULTS    IF COUNTER=16 THEN COUNTER=0:MUSE�STATE=2  BEND  IF MUSE�STATE = 2 THEN GOSUB SHOW�THANKS  IF MUSE�STATE = 3 THEN BEGIN    FADEVAL=COUNTER    'PRINT "";CHR$(27);"Q";FADEVAL;:GETKEY S$    STARTCOL=0:ENDCOL=31:GOSUB FADE�COLOURS�TO�BLACK    IF COUNTER = 16 THEN COUNTER=0:MUSE�STATE = 4  BEND  IF MUSE�STATE = 4 THEN BEGIN    'PRINT "";CHR$(27);"Q MUSE�STATE=4";FADEVAL;:GETKEY S$    FOR K = 0 TO 7:SPRITE K,0:NEXT K    BANK 128    GOSUB RESTORE�SCREEN    CURR�MUSE = CURR�MUSE + 1    MUSE�STATE = 5    COUNTER = 0  BEND  IF MUSE�STATE = 5 THEN BEGIN    FADEVAL=COUNTER    STARTCOL=0:ENDCOL=31:GOSUB FADE�COLOURS�TO�DEFAULTS    IF COUNTER=16 THEN BEGIN      MUSE�STATE = 6      COUNTER = 0      STATE = 2:DIST = 0:VEL = 1    BEND  BEND  IF MUSE�STATE > 0 AND MUSE�STATE < 4 AND STATE=6 THEN BEGIN    GOSUB ANIM�MUSE�SPRITES  BEND    COUNTER = COUNTER + 1  RETURN.DRAW�CLR�TEXT'-------------  CURSOR SX+COUNTER,SY:COLOR MOD(COUNTER,16)+16:PRINT MID$(S$,1+COUNTER,1);  IF COUNTER = LEN(S$) THEN COUNTER = -1  RETURN.SHOW�THANKS'-----------  IF THANK�STATE = 0 AND COUNTER > 5 THEN THANK�STATE = 1:COUNTER=0  IF THANK�STATE = 1 THEN BEGIN    S$=THANK1$(0):SX=1:SY=0:GOSUB DRAW�CLR�TEXT    IF COUNTER <> -1 THEN COUNTER=COUNTER+1:GOSUB DRAW�CLR�TEXT    IF COUNTER = -1 THEN THANK�STATE = 2:THANK�IDX=1  BEND  ' PAUSE  IF THANK�STATE = 2 AND COUNTER > 5 THEN BEGIN    THANK�STATE = 3:COUNTER = 0  BEND  ' DRAW NEXT NAME  IF THANK�STATE = 3 THEN BEGIN    IF THANK�IDX < 16 THEN BEGIN      S$=THANK1$(THANK�IDX)      IF MOD(THANK�IDX,2) = 1 THEN SX=10-LEN(S$)/2:ELSE SX=70-LEN(S$)/2      SY = INT((THANK�IDX-1) / 2)*3 + 3      GOSUB DRAW�CLR�TEXT      IF COUNTER <> -1 THEN COUNTER=COUNTER+1:GOSUB DRAW�CLR�TEXT    BEND    IF COUNTER = -1 OR THANK�IDX=16 THEN BEGIN      THANK�IDX = THANK�IDX + 1      IF THANK�IDX > 16 THEN BEGIN        THANK�STATE = 4        MUSE�STATE=3        COUNTER=0        PALETTE RESTORE        GOSUB STORE�CURR�COLOURS      BEND:ELSE THANK�STATE = 2    BEND  BEND  ' 2ND PAGE OF THANKS  IF CURR�MUSE >= 1 AND CURR�MUSE <=4 THEN GOSUB THANKS�2  ' 3RD PAGE OF THANKS  IF CURR�MUSE >=5 AND CURR�MUSE <=6 THEN GOSUB THANKS�3  IF THANK�STATE<>4 AND THANK�STATE<>8 THEN BEGIN    STARTCOL=16:ENDCOL=31:GOSUB CYCLE�COLOURS  BEND  RETURN.THANKS�2'--------  IF THANK�STATE = 4 AND COUNTER > 10 THEN THANK�STATE = 5:COUNTER=0  IF THANK�STATE = 5 THEN BEGIN    S$=THANK2$(0):SX=40-LEN(S$)/2:SY=0:GOSUB DRAW�CLR�TEXT    IF COUNTER > -1 THEN COUNTER=COUNTER+1:GOSUB DRAW�CLR�TEXT    IF COUNTER = -1 THEN THANK�STATE = 6:THANK�START�IDX=1+(CURR�MUSE-1)*4:THANK�IDX=THANK�START�IDX  BEND  ' PAUSE  IF THANK�STATE = 6 AND COUNTER > 5 THEN BEGIN    THANK�STATE = 7:COUNTER = 0  BEND#DEFINE ��د�����ӯ��ү���� = 4  ' DRAW NEXT SHOUT OUT  IF THANK�STATE = 7 THEN BEGIN    IF THANK�IDX-THANK�START�IDX < ��د�����ӯ��ү���� THEN BEGIN      S$=THANK2$(THANK�IDX)      SX=40-LEN(S$)/2      SY=(THANK�IDX - THANK�START�IDX) * 3 + 3      IF SY > 6 THEN SY = SY + 11      GOSUB DRAW�CLR�TEXT      IF COUNTER > -1 THEN COUNTER=COUNTER+1:GOSUB DRAW�CLR�TEXT    BEND    IF COUNTER = -1 OR THANK�IDX-THANK�START�IDX=��د�����ӯ��ү���� THEN BEGIN      THANK�IDX = THANK�IDX + 1      IF THANK�IDX - THANK�START�IDX >= ��د�����ӯ��ү����+1 THEN BEGIN        THANK�STATE = 4        IF CURR�MUSE = 4 THEN THANK�STATE = 8        MUSE�STATE=3        COUNTER=0        PALETTE RESTORE        GOSUB STORE�CURR�COLOURS      BEND:ELSE THANK�STATE = 6    BEND  BEND  RETURN.THANKS�3'--------  IF THANK�STATE = 8 AND COUNTER > 10 THEN THANK�STATE = 9:COUNTER=0  IF THANK�STATE = 9 THEN BEGIN    S$=THANK3$(0):SX=40-LEN(S$)/2:SY=0:GOSUB DRAW�CLR�TEXT    IF COUNTER = -1 THEN THANK�STATE = 10:THANK�START�IDX=1+(CURR�MUSE-5)*30:THANK�IDX=THANK�START�IDX  BEND  ' PAUSE  IF THANK�STATE = 10 AND COUNTER > 5 THEN BEGIN    THANK�STATE = 11:COUNTER = 0    IF THANK�IDX-THANK�START�IDX >= 30 THEN BEGIN      THANK�STATE = 12      IF CURR�MUSE = 5 THEN THANK�STATE = 8      MUSE�STATE = 3      COUNTER = 0      PALETTE RESTORE      GOSUB STORE�CURR�COLOURS      RETURN    BEND  BEND  ' DRAW NEXT NAME  IF THANK�STATE = 11 THEN BEGIN    IF THANK�IDX-THANK�START�IDX < 30 THEN BEGIN      S$=THANK3$(THANK�IDX)      FOR K = 1 TO LEN(S$)        IF MOD(THANK�IDX,2) = 1 THEN SX=10-LEN(S$)/2:ELSE SX=70-LEN(S$)/2        SY = INT((THANK�IDX-THANK�START�IDX) / 2) + 5        GOSUB DRAW�CLR�TEXT        COUNTER = COUNTER + 1      NEXT K    BEND    THANK�IDX = THANK�IDX + 1    THANK�STATE = 10:COUNTER = 0  BEND  RETURN.ANIM�MUSE�SPRITES'-----------------  NEXT�CNT = NEXT�CNT + 1  IF NEXT�CNT = 5 THEN BEGIN    NEXT�CNT = 0    BANK 4      WPOKE NEXT�SPR*2,$1001+8*(NEXT�FRM + 6 * CURR�MUSE)      WPOKE 0,WPEEK(NEXT�SPR*2)    BANK 128    MOVSPR NEXT�SPR, 150, 120    MOVSPR 0, 150, 120    MOVSPR NEXT�SPR, SPR�ANGLE#1    SPR�ANGLE=MOD(SPR�ANGLE+10,360)    SPRITE NEXT�SPR, 1, GREYS(0)    SPRITE 0, 1, 1    SPR�ACTIVE(NEXT�SPR) = 1    NEXT�SPR = MOD(NEXT�SPR+5, 7)+1    NEXT�FRM = MOD(NEXT�FRM+1, 6)  BEND  FOR K = 1 TO 7    IF SPR�ACTIVE(K)>0 THEN BEGIN      SPR�ACTIVE(K)=SPR�ACTIVE(K)+1      FADEVAL=SPR�ACTIVE(K)/10      IF FADEVAL < 3 THEN BEGIN        SPRITE K, 1, GREYS(FADEVAL)      BEND:ELSE SPRITE K, 0:SPR�ACTIVE(K)=0    BEND  NEXT K  RETURN.INIT�MUSE�SPRITES'-----------------  ' TURN OF ALL SPRITES  FOR K = 0 TO 7    SPRITE K, 0    MOVSPR K, 160, 80  NEXT K  POKE ����64��, 255  POKE ��������, 255  POKE ������, 64  POKE ���������, 4+128  WPOKE ���������, 0  RETURN.SAVE�SCREEN  ^^EDMA 0, $7D0, $800, $48000  ^^EDMA 0, $7D0, $1F800, $49000  RETURN.RESTORE�SCREEN  ^^EDMA 0, $7D0, $48000, $800  ^^EDMA 0, $7D0, $49000, $1F800  RETURN.FADE�OUT'--------  FADEVAL = COUNTER  GOSUB FADE�COLOURS�TO�BLACK  COUNTER = COUNTER + 1  IF COUNTER > 16 THEN STATE = STATE + 1:STARTCOL=0:ENDCOL=31:COUNTER=0:GOSUB STORE�CURR�COLOURS:MUSE�STATE=0  RETURN.HIGHLIGHT�CURR�MUSE'-------------------    FADEVAL = DEFCOLVAL    K = MUSE�CLR(CURR�MUSE)    STARTCOL = K:ENDCOL = K    GOSUB FADE�COLOURS�TO�WHITE    DEFCOLVAL = DEFCOLVAL + DEFCOLDIR    IF DEFCOLVAL = 16 THEN DEFCOLDIR=-2    IF DEFCOLVAL = 0 THEN DEFCOLDIR=2:COUNTER=COUNTER+1    IF COUNTER = 3 AND DEFCOLVAL = 14 AND DEFCOLDIR=-2 THEN BEGIN      STATE=STATE+1      COUNTER=0      PALETTE RESTORE      FADEVAL=0      GOSUB SAVE�SCREEN    BEND    RETURN.FADE�COLOURS�TO�WHITE'---------------------  '�����: FADEVAL=0 TO 16  TEMPVAL = FADEVAL / 16  FOR K = STARTCOL TO ENDCOL    POKE $D100+K, DEFAULT�RED(K) + (15 - DEFAULT�RED(K)) * TEMPVAL    POKE $D200+K, DEFAULT�GREEN(K) + (15 - DEFAULT�GREEN(K)) * TEMPVAL    POKE $D300+K, DEFAULT�BLUE(K) + (15 - DEFAULT�BLUE(K)) * TEMPVAL  NEXT K  RETURN  .CYCLE�COLOURS'-------------  TEMPR = PEEK($D100+STARTCOL)  TEMPG = PEEK($D200+STARTCOL)  TEMPB = PEEK($D300+STARTCOL)  FOR K = STARTCOL TO ENDCOL    POKE $D100+K, PEEK($D100+K+1)    POKE $D200+K, PEEK($D200+K+1)    POKE $D300+K, PEEK($D300+K+1)  NEXT K  POKE $D100+ENDCOL, TEMPR  POKE $D200+ENDCOL, TEMPG  POKE $D300+ENDCOL, TEMPB  RETURN.P1�ENDER'--------  RETURN'==========================.P7�BIG�OLIVIA�WITH�SPRITES'==========================  GOSUB P7�INIT  GOSUB P7�LOOP  GOSUB P7�ENDER  RETURN'----.P7�INIT'----  ' SWITCH TO 80X50  BANK 128  SETBIT �����ǯ7, 7  POKE $D031, $E8 ' 1110 1000 = �640,����,����,�400  ' MOVE ������� TO BANK4 - $8000  WPOKE ����������, $8000  POKE ����������,$04  ' LET ALL SPRITES BE 64 BITS WIDE  POKE ����64��, 255  ' LET ALL SPRITES BE 64 BITS HIGH  POKE ��������, 255  POKE ������, 64  ' $4,0000 +------------------+  '         ! ������ (8 WORDS) !  ' $4,0040 +------------------+ <-- SPRPTR $1001  '         ! ����.���         !  '         ! ========         !  '         ! ����#1 - FRAME 0 !  ' $4,0240 +..................+ <-- SPRPTR $1001 + 8  '         ! ����#1 FRAMES1-5 !  ' $4,0�40 +..................+ <-- SPRPTR $1001 + 8*6  '         ! ����#2 FRAMES0-5 !  ' $4,1�40 +..................+ <-- SPRPTR $1001 + 8*12  '         ! �����#3 TO #8    !  ' $4,6040 +..................+  '         ! 32 X ��� ������� !  ' $4,6��0 +..................+  '         ! OLI - FRAME 0    !  ' $4,7�40 +------------------+  '         ! �����.���        !  '         ! =========        !  '         ! ����� - FRAME 0  !  ' $4,7�80 +..................+  '         ! ����� - FRAME 1  !  ' $4,7��0 +..................+  '         ! ����� FRM 2-12   !  ' $4,7�80 +------------------+  ' $4,8000 +------------------+  '         ! ������ ��� 80X50 !  ' $4,8��0 +------------------+  ' $5,0000 +------------------+  '         ! ���.���          !  ' $5,��00 +------------------+  ' ENFORCE SPRITES INTO ����4 AND ������16 BIT TURNED ON  POKE ���������, 4+128             WPOKE ���������, 0  ' SWITCH PALETTE  #DECLARE RED,GREEN,BLUE  LOC=$46040  FOR IDX=0 TO 31    RED=PEEK(LOC):LOC=LOC+1    GREEN=PEEK(LOC):LOC=LOC+1    BLUE=PEEK(LOC):LOC=LOC+1    ' PRINT "R=";RED;", G=";GREEN;", B=";BLUE    POKE $D100+IDX,RED    POKE $D200+IDX,GREEN    POKE $D300+IDX,BLUE  NEXT IDX  ' CLEAR 80X50 CHARS AND COLOUR RAM  FOR IDX=0 TO 3999:POKE $48000+IDX,160:POKE $FF80000+IDX,6:NEXT IDX        ' DISPLAY SPRITE  #DECLARE SPRCLR,OFFX  SPRCLR = 30  OFFX=25  SPRITE 0,1,SPRCLR  MOVSPR 0,0+OFFX,50  SPRITE 1,1,SPRCLR  MOVSPR 1,85+OFFX,50  SPRITE 2,1,SPRCLR  MOVSPR 2,171+OFFX,50  SPRITE 3,1,SPRCLR  MOVSPR 3,256+OFFX,50  SPRITE 4,1,SPRCLR  MOVSPR 4,0+OFFX+8,180  SPRITE 5,1,SPRCLR  MOVSPR 5,85+OFFX+8,180  SPRITE 6,1,SPRCLR  MOVSPR 6,171+OFFX,180  SPRITE 7,1,SPRCLR  MOVSPR 7,256+OFFX,180  ' POINT SPRITE0 TO $4040  BANK 4  FOR K=0 TO 14 STEP 2    WPOKE K, $1001+8*(3*K)  NEXT K  ' SET BACKGROUND, BORDER  BACKGROUND 6  BORDER 14  IDX = 0  ^^OI=0:OD=0  RETURN/----.P7�LOOP'----  ' SELECT SPRITE FRAME  BANK 4  FOR K=0 TO 7    WPOKE K*2, $1001+8*(IDX+6*K)  NEXT K  GOSUB DRAWOLIVIA  GOSUB POLL�PLAY  SLEEP .3  IDX=IDX+1  IF IDX=6 THEN IDX=0  GET A$:IF A$="" THEN GOTO P7�LOOP  RETURN'-----.P7�ENDER'-----  FOR IDX = 0 TO 7    SPRITE IDX,0  NEXT IDX  ' SWITCH TO 80X25  BANK 128  POKE $D031, $E0 ' 1110 0000 = �640,����,����  ' RESTORE ������ TO BANK 0 - $0800  WPOKE ����������, $0800  POKE ����������, 0  PALETTE RESTORE  END'----------.DRAWOLIVIA'----------  #DECLARE X,Y,Z,BVAL,OLIDX  ^^IF OI=0 THEN LO=$460A0  ^^IF OI>0 THEN LO=$50000+4000*(OI-1)  LOC=$46CA0 ' FIRST OLIVIA FRAME  ^^EDMA 0,4000,LO,$FF80000  ^^IF OD = 0 THEN OI = OI + 1:IF OI > 8 THEN OD = 1:OI=8  ^^IF OD = 1 THEN OI = OI - 1:IF OI < 1 THEN OD = 0  RETURN'==========.INIT�MUSIC'==========  PLAY  TEMPO 17  BAR�INDEX=0  MAP�BAR�TO�CHUNK(0)=0  MAP�BAR�TO�CHUNK(1)=0  MAP�BAR�TO�CHUNK(2)=1  MAP�BAR�TO�CHUNK(3)=2  MAP�BAR�TO�CHUNK(4)=2  MAP�BAR�TO�CHUNK(5)=3  MAP�BAR�TO�CHUNK(6)=4  MAP�BAR�TO�CHUNK(7)=2  MAP�BAR�TO�CHUNK(8)=2  MAP�BAR�TO�CHUNK(9)=3  MAP�BAR�TO�CHUNK(10)=4  MAP�BAR�TO�CHUNK(11)=5  MAP�BAR�TO�CHUNK(12)=6  MAP�BAR�TO�CHUNK(13)=7  MAP�BAR�TO�CHUNK(14)=8  MAP�BAR�TO�CHUNK(15)=9  MAP�BAR�TO�CHUNK(16)=9  MAP�BAR�TO�CHUNK(17)=10  MAP�BAR�TO�CHUNK(18)=11  MAP�BAR�TO�CHUNK(19)=12  MAP�BAR�TO�CHUNK(20)=13  MAP�BAR�TO�CHUNK(21)=14  MAP�BAR�TO�CHUNK(22)=15  ENVELOPE 8,0,12,3,7  ENVELOPE 1,0,9,9,12,2,2048  ' *** INTRO WAILING ***  ' ---------------------  V1$(0)="O5T4M9WFFFHF"  V2$(0)="O3T5M0SP0CP1O5RCRCRCRCRCRCRCR P0O5CRP1O3CRCRCRCRCRCRCR P0O4GR P1O2GRGRGRGRGRGRGR P0O4ER P1O2ERERER"  V3$(0)="M1P0T6O1IFE#DEFD#DEFE#DEFE#DEFE#DEFE#DEFE#DE"  V4$(0)="O5T4M9W#F#F#FH#F"  V5$(0)="O3T5M0SP0#CP1O5R#CR#CR#CR#CR#CR#CR#CR P0O5#CRP1O3#CR#CR#CR#CR#CR#CR#CR P0O4#GR P1O2#GR#GR#GR#GR#GR#GR#GR P0O4#ER P1O2#ER#ER#ER"  V6$(0)="M1T9O6SEGEG#D#F#D#FDFDF#CE#CE FAFAE#GE#G#DG#DGD#FD#F GBGB#F#A#F#AFAFAE#GE#G FA#F#AFA#F#A"  ' *** FIRST RIFF ***  ' ------------------  V1$(1)="T7P0M1O2QFO3C O2IGGGGGGGGGGGG O2QFO3C O2IGGGGGGGGGGGG"  V2$(1)="T9 P0O6 QFE SGR P2O2GRGRGRGRGRGRGRGRGRGRGR":V2$(1)=V2$(1)+V2$(1)  V3$(1)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR"  V4$(1)="T7P0M1QO3CG IDDDDDDDDDDDD QO3CG IDDDDDDDDDDDD"  V5$(1)="T9 P0O5QAG SBR P1O1BRBRBRBRBRBRBRBRBRBRBR":V5$(1)=V5$(1)+V5$(1)  V6$(1)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR"  ' REM *** I'M ALIVE! ***  ' ---------------------  V1$(2)="T7M5O5QP0GG GRIRP7 E#F QGIGQG#FE HE SEDE#FE#F HDIR"  V2$(2)="T7P0M1O2QFO3C O2QGGIGQGIO3C O2QEEIEQEIA QCCICQCIE QDD"  V3$(2)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR"  V4$(2)="T7M5O6QP0FP9SEDEF QDRIR T0O6P0EP8#F QGIGQG#FE HE SEDE#FE#F HDIR"  V5$(2)="T7P0M1O3QCG DDIDQDIG O2QBBIBQBO3IE O2 QGGIGQGIB QAA"  V6$(2)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR"#IFDEF ��������  ' *** SEEMS LIKE FOREVER ***  V1$(3)="T7M5O5QP0IDP5SCDICSO4BO5C QO4BIO5CQC T2P0IEP5G#F QRR T7M5O5P0IDP5SCDICSO4BO5C QO4BIO5CQC T2P0IEP5G#F Q.R P0T7I#D P7S#DD#DE#FE#FGHGR"  V2$(3)="T7P0M1O3QDO2#F QAA IO3ECEQDIDDD O3QDO2#F QAA IO3ECEQDIDDD EE#F#F Q.EIEEEEE"  V3$(3)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  V4$(3)="T0M4O4P0IDP8SCDICSO3BO4C QO3BIO4CQC O5T2P0IGP5BA QRR T0M4O4P0IDP8SCDICSO3BO4C QO3BIO4CQC O5T2P0IGP5BA Q.R O4P0T0I#DP9S#DD#DE#FE#FGHGR"  V5$(3)="T7P0M1O3QAD EE IGEG Q#F I#F#F#F QAD EE IGEG Q#F I#F#F#F GGAA Q.B IBBBBB"  V6$(3)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  ' *** IM ALIVE (CHORUS1) ***  ' --------------------------  V1$(4)="T7M5O5P0QAA P3H.BP1QAQ.AIR QP0AA P3H.BP1QAQ.AIR"  V2$(4)="T7P0M1O3QDDIGGGGGGGG DDDDDDDD GGGGGGGG DDDD"  V3$(4)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  V4$(4)="T7M5O6P0QDDWDQDR DDWDQDR"  V5$(4)="T7P0M1O3QAA O4IDDDDDDDD O3IAAAAAAAA O4DDDDDDDD O3IAAAA"  V6$(4)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  ' *** I'M ALIVECLOSE(CHORUS2 ENDING) ***  ' --------------------------------------  V1$(5)="T7M5O5P0QAA HBIAB O6CO5HBIRSAP9GABABGA W.G"  V2$(5)="T7P0M1O3QDD GG#F#FEEDDW.C"  V3$(5)="T3O2 IBRBR O1GR GR O2 GR O1 GR GR GR O2 GR O1 GR T0O2P0S#CR O5P1 #CR#CR#CR#CR#CR#CR#CR#CR#CR#CR#CR"  V4$(5)="T7M5O5P0Q#F#F HGI#FGAHGIRS#FP9E#FG#FGE#F W.C"  V5$(5)="T7P0M1O3QAA O4DDCCO3BBAAW.G"  V6$(5)="T3O2 IBRBR O1GR GR O2 GR O1 GR GR GR O2 GR O1 GR T0O2P0SCR O5P1 CRCRCRCRCRCRCRCRCRCRCR"  ' *** INSTRUMENTAL ***  ' --------------------  V1$(6)="T7M5P5O5 QRR R Q.G IED O4QB IO5DEG P0SDO4BO5DEDO4BIP9G O4IEGGEQGIE QBO5IDDO4BO5QDE P9O5R Q.GIEDQESGEGEIGBO6DO5SP0BAIG"  V1$(6)=V1$(6)+"O5QP9IBP0SGBO6IDO5SBO6D SP0G#FDO5B O6#FDO5BG P9IBO6CDO5IB"  V2$(6)="T7P0M1O2QFO3C O2QGGIGQGIO3C O2QEEIEQEIA O1QAAIAQAIO2E QDD  FO3C O2QGGIGQGIO3C O2QEEIEQEIA O1QAAIAQAIO2E QDD"  V3$(6)="P0T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR":V3$(6)=V3$(6)+V3$(6)  V4$(6)="QRRT2P0SO6B#F#AFAE#G#DGD#F#CFCEO5BO6#DO5#AO6DO5AO6#CO5#GO6CO5GB#F#AFAE#GDO3SCRP2T7O6CRCRCRCRCRCRCRCRCRCRCRCRCRGRGR"  V4$(6)=V4$(6)+"T6O6P0SDP6O5CO3P9CO2CO5P0SBP6O5CO3P9CO2CO5P0SGP6O5CO3P9O1CCO5P0SGP6O5CO3P9O1CC"  V4$(6)=V4$(6)+"O4P0GRP1O2CRCRCRCRCRCRCRT0O5P0SEGEGF#GF#G#FA#FAGBGBT7O6SGP3O2WC"  V5$(6)="T7P0M1O3QCG DDIDQDIG O2QBBIBQBO3IE QEEIEQEIG Q#F#F  CG DDIDQDIG O2QBBIBQBO3IE QEEIEQEIG Q#F#F"  V6$(6)="P0T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR":V6$(6)=V6$(6)+V6$(6)  ' *** SUDDENLY CAME THE DAWN ***  ' ------------------------------  V1$(7)="T7M5O5QP0IDP5SCDICSO4BO5C QO4BIO5CQC T2P0IEP5G#F QRR T7M5O5P0IDP5SCDICSO4BO5C QO4BIO5CQC T2P0IEP5G#F Q.R P0T7I#D P7S#DD#DE#FE#FGHG"  V2$(7)="T7P0M1O3QDO2#F QAA IO3ECEQDIDDD O3QDO2#F QAA IO3ECEQDIDDD EE#F#F Q.EIEEEEE"  V3$(7)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  V4$(7)="T0M4O4P0IDP8SCDICSO3BO4C QO3BIO4CQC O5T2P0IGP5BA QRR T0M4O4P0IDP8SCDICSO3BO4C QO3BIO4CQC O5T2P0IGP5BA Q.R O4P0T0I#DP9S#DD#DE#FE#FGHGR"  V5$(7)="T7P0M1O3QAD EE IGEG Q#F I#F#F#F QAD EE IGEG Q#F I#F#F#F GGAA Q.B IBBBBB"  V6$(7)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  ' *** I'M ALIVE! CHORUS2 ***  ' -------------------------  V1$(8)="T7M5O5P0QAA P3HB QBBO6H.#C O51QBQ.BIR QP0BB P3H.O6#CP1O5QBQ.BIR"  V2$(8)="T7P0M1O3QDDHG QEE SARARARARARARARAR ERERERERERERERER ARARARARARARARAR ERERERER"  V3$(8)="T3O2 IBRBR BRRR BRBR O1S GRGRGRGRGRGRGRGRGRGRGRGRGRGRGRGR GRGRGRGRGRGRGRGRGRGRGRGR"  V4$(8)="T7M5O6P0QDD HD QEE RO5EP9O6EID#CO5HB P0O6QEE RO5EP9O6EID#CO5HB"  V5$(8)="T7P0M1O3QAAO4HD O3QBB O4SERERERERERERERER O3BRBRBRBRBRBRBRBR O4ERERERERERERERER O3BRBRBRBR"  V6$(8)="T3O2 IBRBR BRRR BRBR O1S GRGRGRGRGRGRGRGRGRGRGRGRGRGRGRGR GRGRGRGRGRGRGRGRGRGRGRGR"  ' *** IM ALIVE! VERSE PITCH SHIFT ***  ' -----------------------------------  V1$(9)="T7M5O5QP0AA ARIRP7 #F#G QAIAQA#G#F H#F S#FE#F#G#F#G HEIR"  V2$(9)="T7P0M1O2QGO3D O2QAAIAQAIO3D O2Q#F#FI#FQ#FIB QDDIDQDI#F QEE"  V3$(9)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR"  V4$(9)="T7M5O6QP0GP9S#FD#FG QERIR T0O6P0#FP8#G QAIAQA#G#F H#F S#FE#F#G#F#G HEIR"  V5$(9)="T7P0M1O3QDA EEIEQEIA O3Q#C#CI#CQ#CI#F O2 QAAIAQAIO3#C O2QBB"  V6$(9)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR"  ' *** SEEMS LIKE FOREVER ***  V1$(10)="T7M5O5QP0IEP5SDEIDS#CO5D Q#CIO5DQD T2P0I#FP5A#G QRR T7M5O5P0IEP5SDEIDS#CD Q#CIO5DQD T2P0I#FP5A#G Q.R P0T7IF P7SFEF#F#G#F#GAHAR"  V2$(10)="T7P0M1O3QEO2#G QBB IO3#FD#FQEIEEE O3QEO2#G QBB IO3#FD#FQEIEEE #F#F#G#G Q.#FI#F#F#F#F#F"  V3$(10)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  V4$(10)="T0M4O4P0IEP8SDEIDS#CD Q#CIO4DQD O5T2P0IAP5O6#CO5B QRR T0M4O4P0IEP8SDEIDS#CD Q#CIO4DQD O5T2P0IAP5O6#CO5B Q.R O4P0T0IFP9SFEF#F#G#F#GAHAR"  V5$(10)="T7P0M1O3QBE #F#F IA#FA Q#G I#G#G#G QBE #F#F IA#FA Q#G I#G#G#G AABB QO4.#C I#C#C#C#C#C"  V6$(10)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GR O2GR O1GG O2GR O1GG O2GR"  ' *** IM ALIVE CHORUS3 ***  V1$(11)="T7M5O5P0QBB P3HO6#C O5IBO6#CDH#CIR O5QBB P3HO6#C O5IBO6#CDH#CIR O5QBB HO6#C O5IBO6#CDH#CIR SP9O5BABO6#CO5BO6#CO5AB"  V2$(11)="T7P0M1O3QEE SAEAEAEAE #GE#GE#GE#GE #FE#FE#FE#FE EBEBEBEB SAEAEAEAE#GE#GE#GE#GE#FE#FE#FE#FE EBEBEBEB SAEAEAEAE#GE#GE#GE#GE#FE#FE#FE#FE EBEBEBEB"  V3$(11)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR"  V4$(11)="T7M5O5P0Q#G#G P3HA I#GABHAIR Q#G#GHA I#GABHAIR Q#G#GHA I#GABHAIR P9S#G#F#GA#F#GE#F"  V5$(11)="QT6O4EE O5IP0AE#CO4A O5BE#CO4A O6#CO5E#CO4A O6EO5B#GE O5IP0AE#CO4A O5BE#CO4A O6#CO5E#CO4A O6EO5B#GE"  V5$(11)=V5$(11)+"O5SP0AE#CEAE#CE BE#CEBE#CE O6#CO5E#CEO6#CO5E#CE O6EO5B#GBO6EO5B#GB"  V6$(11)="T3O2 IBRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR BRBR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR"  ' *** FINAL INTERLUDE INTRO ***  V1$(12)="T8M5O5P0 H.#FIRS#F#F Q.GSGGIGSRIGSRIG":V1$(12)=V1$(12)+V1$(12)+V1$(12):V1$(12)=V1$(12)+"H.#FIRS#F#F Q.GSGGIFSRIFSRIF"  V2$(12)="T8O3H.DIRSDD Q.DSDDO2IASRIASRIA O3H.DIRSDD Q.DSDDIDSRIDSRID H.DIRSDD Q.DSDDO2IASRIASRIA H.DIRSDD Q.DSDD O2I#GSRI#GSRI#G"  V3$(12)="T3O2 QBRRIRSBB Q.BSBBIDSRIDSRID QBRRIRSBB Q.BSBBIDSRIDSRID O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR IDSRIDSRID"  V4$(12)="M0P0T7O1H.DIRSDD Q.DSDDIDSRIDSRID":V4$(12)=V4$(12)+V4$(12)+V4$(12):V4$(12)=V4$(12)+"H.DIRSDD Q.DSDD I#GSRI#GSRI#G"  V5$(12)="T8O3H.AIRSAA Q.ASAAIDSRIDSRID H.AIRSAA Q.ASAAIASRIASRIA H.AIRSAA Q.ASAAIDSRIDSRID H.AIRSAA Q.ASAA I#CSRI#CSRI#C"  V6$(12)="T3O2 QBRRIRSBB Q.BSBBIDSRIDSRID QBRRIRSBB Q.BSBBIDSRIDSRID O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR IDSRIDSRID"  ' *** FINAL INTERLUDE 1 ***  V1$(13)="O5T8W.E QO6IDP5SRI#CSR O5IB H.A IRB WB WE O6H#C O5A WG R"  V2$(13)="T6O2 IAAAAAAAA AAAAAAAA EEEEEEEE EEEE T8QGB T6IAAAAAAAA AAAAAAAA EEEEEEEE EEEE T8QGB"  V3$(13)="T3O2I O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR BRBR":V3$(13)=V3$(13)+V3$(13)  V4$(13)="O4T8W.E QO5IDP5SRI#CSR O4IB H.A IRB WB WE O5H#C O4A WG R"  V5$(13)="T6O3 IEEEEEEEE EEEEEEEE O2BBBBBBBB BBBBO3 T8QD#F T6IO3EEEEEEEE EEEEEEEE O2BBBBBBBB BBBBO3 T8QD#F"  V6$(13)="T3O2I O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR BRBR":V6$(13)=V6$(13)+V6$(13)  ' *** FINAL INTERLUDE 2 ***  V1$(14)="O6T8W.#C Q#CIO5BO6#C HD IREF HEIR"  V2$(14)="T7M0O2 SARARARARARARARAR ARARARARARARARAR #AR#AR#AR#AR#AR#AR#AR#AR T8Q.EIEQEE"  V3$(14)="T3I O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR BRR BBRBR"  V4$(14)="O5T8W.#C Q#CIO4BO5#C HD IREF HEIR"  V5$(14)="T7M0P0O3 SERERERERERERERER ERERERERERERERER FRFRFRFRFRFRFRFR T8O2 Q.BIBQBB"  V6$(14)="T3I O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR O1GR O2GR O1GG O2GR BRR BBRBR"  ' *** FINAL IM ALIVE CHORUS ***  V1$(15)="T7M5O5P0 QBB P3O6H.#C O5QBQ.BIR QP0BB P3H.O6#CP1O5QBQ.BIR QP0BB P3H.O6#CP1O5QBQ.BIR QP0BB T1O6HC"  V2$(15)="SO2AO3AO2AO3AO2AO3AO2AO3A O2AO3AO2AO3AO2AO3AO2AO3A O2Q.E IEQEE":V2$(15)="T7P0M1O2QEE"+V2$(15)+V2$(15)+V2$(15)+"P1T1HF"  V3$(15)="T3I O2BRBR O1GR O2GR O1GG O2GR BRRB BRBR O1GR O2GR O1GG O2GR BRRB BRBR O1GR O2GR O1GG O2GR BRRB BRBR O1HG"  V4$(15)="P0T7O5Q#G#G P2H.A Q#GQ.#GIR Q#G#G H.A Q#GQ.#GIR Q#G#G H.A Q#GQ.#GIR Q#G#G T1 P1SFHO2F"  V5$(15)="QT6O4EE O5IP0AE#CO4A O5IP0AE#CO4A O5B#GEO4B O5B#GEO4B O5IP0AE#CO4A O5IP0AE#CO4A O5B#GEO4B O5B#GEO4B"  V5$(15)=V5$(15)+"O5SP0AE#CEAE#CE AE#CEAE#CE B#GE#GB#GE#G B#GE#GB#GE#G O5T1SEP1O2HE"  V6$(15)="T3I O2BRBR O1GR O2GR O1GG O2GR BRRB BRBR O1GR O2GR O1GG O2GR BRRB BRBR O1GR O2GR O1GG O2GR BRRB BRBR O1HG"#ENDIF  RETURN'---------.POLL�PLAY'---------  IF RPLAY(1) THEN RETURN  MUSIC�CHUNK�INDEX=MAP�BAR�TO�CHUNK(BAR�INDEX)    PLAY V1$(MUSIC�CHUNK�INDEX),V2$(MUSIC�CHUNK�INDEX),V3$(MUSIC�CHUNK�INDEX)  SLEEP .02  PLAY ,,,V4$(MUSIC�CHUNK�INDEX),V5$(MUSIC�CHUNK�INDEX),V6$(MUSIC�CHUNK�INDEX)  BAR�INDEX=BAR�INDEX+1  IF BAR�INDEX>23 THEN END  RETURN