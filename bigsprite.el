#OUTPUT "BIGSPRITE"'------------.DECLARATIONS'------------  #DECLARE A$ = ""  #DECLARE IDX = 0  #DECLARE VALUE = 0  #DECLARE LOC  #DECLARE K  #DECLARE ����64�� = $D057  #DECLARE �������� = $D055  #DECLARE ������   = $D056  #DECLARE ���������� = $D060  #DECLARE ���������� = $D062  #DECLARE ������16 = $D06E  #DECLARE ��������� = $D06C  #DECLARE ��������� = $D06E  #DECLARE �����ǯ7 = $D05D'----.MAIN'----  GOSUB P1�DROP�PAPERS  GOSUB P2�COLOUR�CYCLE�STATIC�MUSES  GOSUB P3�ANIMATE�MUSE1�2�3�4  GOSUB P4�PULSE�BACKGROUND�MURAL�TO�CHORUS  GOSUB P5�ANIMATE�MUSE�5�6�7�8�9  GOSUB P6�PULSE�BACKGROUND�MURAL�2ND�TIME  GOSUB P7�BIG�OLIVIA�WITH�SPRITES  GOSUB P8�MUSES�RETURN�TO�PETSCII�MURAL  GOSUB P9�PULSE�BACKGROUND�MURAL�3RD�TIME  GOSUB P10�PETSCII�DANCERS�COME�TO�LIFE  GOSUB P11�EXPANDED�OR�TILED�SPRITES  GOSUB P12�MUSES�DANCING�IN�CIRCLE  GOSUB P13�HOLLYWOOD�DASH  GOSUB P14�FINALE'==============.P1�DROP�PAPERS'==============  GOSUB P1�INIT  GOSUB P1�LOOP  GOSUB P1�ENDER  RETURN.P1�INIT'-------  ' DRAW BACKGROUND MURAL  RETURN.P1�LOOP'-------  ' DROP PAPER SPRITES DOWN  ' START FADING COLOURS FROM GRY TO COLOURED AS THE PAPER DROPS  RETURN.P1�ENDER'--------  RETURN'==========================.P7�BIG�OLIVIA�WITH�SPRITES'==========================  GOSUB P7�INIT  GOSUB P7�LOOP  GOSUB P7�ENDER  RETURN'----.P7�INIT'----  ' SWITCH TO 80X50  BANK 128  SETBIT �����ǯ7, 7  POKE $D031, $E8 ' 1110 1000 = �640,����,����,�400  ' MOVE ������� TO BANK4 - $8000  WPOKE ����������, $8000  POKE ����������,$04  ' LET ALL SPRITES BE 64 BITS WIDE  POKE ����64��, 255  ' LET ALL SPRITES BE 64 BITS HIGH  POKE ��������, 255  POKE ������, 64  ' $4,0000 +------------------+  '         ! ������ (8 WORDS) !  ' $4,0040 +------------------+ <-- SPRPTR $1001  '         ! ����#1 - FRAME 0 !  ' $4,0240 +------------------+ <-- SPRPTR $1001 + 8  '         ! ����#1 FRAMES1-5 !  ' $4,0�40 +------------------+ <-- SPRPTR $1001 + 8*6  '         ! ����#2 FRAMES0-5 !  ' $4,1�40 +------------------+ <-- SPRPTR $1001 + 8*12  '         ! �����#3 TO #9    !  ' $4,6�40 +------------------+  '         ! 32 X ��� ������� !  ' $4,6��0 +------------------+  ' $4,8000 +------------------+  '         ! ������ ��� 80X50 !  ' $4,8��0 +------------------+  ' ENFORCE SPRITES INTO ����4 AND ������16 BIT TURNED ON  POKE ���������, 4+128             WPOKE ���������, 0  ' LOAD 64X64 SPRITE DATA  ^^BLOAD "MUSE.DAT",P($40040),R  ' LOAD OLI FRAMES TO BANK 5  ^^BLOAD "OLI.DAT",P($50000),R  ' SWITCH PALETTE  #DECLARE RED,GREEN,BLUE  LOC=$46C40  FOR IDX=0 TO 31    RED=PEEK(LOC):LOC=LOC+1    GREEN=PEEK(LOC):LOC=LOC+1    BLUE=PEEK(LOC):LOC=LOC+1    ' PRINT "R=";RED;", G=";GREEN;", B=";BLUE    POKE $D100+IDX,RED    POKE $D200+IDX,GREEN    POKE $D300+IDX,BLUE  NEXT IDX  ' CLEAR 80X50 CHARS AND COLOUR RAM  FOR IDX=0 TO 3999:POKE $48000+IDX,160:POKE $FF80000+IDX,6:NEXT IDX        ' DISPLAY SPRITE  #DECLARE SPRCLR,OFFX  SPRCLR = 30  OFFX=25  SPRITE 0,1,SPRCLR  MOVSPR 0,0+OFFX,50  SPRITE 1,1,SPRCLR  MOVSPR 1,85+OFFX,50  SPRITE 2,1,SPRCLR  MOVSPR 2,171+OFFX,50  SPRITE 3,1,SPRCLR  MOVSPR 3,256+OFFX,50  SPRITE 4,1,SPRCLR  MOVSPR 4,0+OFFX+8,180  SPRITE 5,1,SPRCLR  MOVSPR 5,85+OFFX+8,180  SPRITE 6,1,SPRCLR  MOVSPR 6,171+OFFX,180  SPRITE 7,1,SPRCLR  MOVSPR 7,256+OFFX,180  ' POINT SPRITE0 TO $4040  BANK 4  FOR K=0 TO 14 STEP 2    WPOKE K, $1001+8*(3*K)  NEXT K  ' SET BACKGROUND, BORDER  BACKGROUND 6  BORDER 14  IDX = 0  ^^OI=0:OD=0  RETURN/----.P7�LOOP'----  ' SELECT SPRITE FRAME  BANK 4  FOR K=0 TO 7    WPOKE K*2, $1001+8*(IDX+6*K)  NEXT K  GOSUB DRAWOLIVIA  SLEEP .3  IDX=IDX+1  IF IDX=6 THEN IDX=0  GET A$:IF A$="" THEN GOTO LOOP  RETURN'-----.P7�ENDER'-----  FOR IDX = 0 TO 7    SPRITE IDX,0  NEXT IDX  ' SWITCH TO 80X25  BANK 128  POKE $D031, $E0 ' 1110 0000 = �640,����,����  ' RESTORE ������ TO BANK 0 - $0800  WPOKE ����������, $0800  POKE ����������, 0  PALETTE RESTORE  END'----------.DRAWOLIVIA'----------  #DECLARE X,Y,Z,BVAL,OLIDX  ^^IF OI=0 THEN LO=$46CA0  ^^IF OI>0 THEN LO=$50000+4000*(OI-1)  LOC=$46CA0 ' FIRST OLIVIA FRAME  ^^EDMA 0,4000,LO,$FF80000  ^^IF OD = 0 THEN OI = OI + 1:IF OI > 16 THEN OD = 1:OI=16  ^^IF OD = 1 THEN OI = OI - 1:IF OI < 1 THEN OD = 0  RETURN