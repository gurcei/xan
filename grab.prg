   CL$��(27)�"Q"   FF�0 9 
 � *** SCREEN CAPTURE *** f  � 1. PRESS 'SPACE' KEY ON TOP-LEFT POINT �  � 2. THEN USE CURSOR KEYS TO MOVE TO BOTTOM-RIGHT POINT & PRESS 'SPACE' � ( � 3. PROVIDE A FILENAME TO SAVE TO � 2 X�0:Y�0:S�0 u!3 � �($5FFFE)��71 � �($5FFFF)��73 � � $5FFFE,$4947:� $40000,0:� CHECK FOR MAGIC MARKER AT END OF BANK 5, IF NOT THERE, INITIALISE B4 MEM �!7  �A 0,24:� 1100:� CL$;"BLOCK COUNT=";�($40000);", NEXT-FREE=$";�(Z); �!< � S�0 � T1��($800�X�Y�80):C1��($1F800�X�Y�80):X0�X:Y0�Y 6"A � S�1 � T2��($800�X�Y�80):C2��($1F800�X�Y�80):X1�X:Y1�Y ]"F � $800�X�Y�80,43:� $1F800�X�Y�80,1 g"P �� A$ ~"U � A$��" " � � 1000 �"Z � A$�"�" � X�0 � X�X�1 �"d � A$�"" � X�79 � X�X�1 �"n � A$�"�" � Y�0 � Y�Y�1 �"x � A$�"" � Y�24 � Y�Y�1 #y � A$�"C" � � "�";:B�0:� 620 5#z � A$�"-" � FF�0 � FF�FF�1:B�FF:� 620 f#| � A$�"=" � FF��($40000) � FF�FF�1:B�FF:� 620 �#� � A$�" " � S�S�1:� 1000:� S�2 � � 150 �#� � A$�"L" � � 600:� LOAD BLOCK �#� � A$�"X" � �A 0,0:� �#� � 1050 �#� � 60 $� � *** RESTORE ORIGINAL CHARS AND SAVE BLOCK TO MEMORY *** 6$� � - SAVE X,Y,W,H,DATA b$� � $800�X0�Y0�80,T1:� $1F800�X0�Y0�80,C1 �$� � $800�X�Y�80,T2:� $1F800�X�Y�80,C2 �$� I��($40000):� BLOCK COUNT �$� � 1100:� LOCATE NEXT FREE BYTE �$� Z�$40000�L �$� � Z,X0:Z�Z�1 �$� � Z,Y0:Z�Z�1 %� � Z,X�X0�1:Z�Z�1 &%� Z,Y�Y0�1:Z�Z�1 6%� YY�Y0 � Y H%  � XX�X0 � X k%"    � Z,�($800�XX�YY�80):Z�Z�1 v%6  � XX %@� YY �%A� YY�Y0 � Y �%B  � XX�X0 � X �%C    � Z,�($1F800�XX�YY�80):Z�Z�1 �%D  � XX �%E� YY �%J� $40000,I�1 ,&^�A 0,24:� CL$;"BLOCK COUNT=";�($40000);", NEXT-FREE=$";�(Z); 9&h�A 0,0:� R&X� *** LOAD BLOCK *** n&b� "";CL$;:� "BLOCK#";B �&lMX��($40000):Z�$40001:I�0 �&v� I��MX � �A 0,0:� CL$;"INVALID BLOCK#!";:� �&�� TRAVERSE TO FIND BLOCK �&�� I�B � � 720:� FOUND '�Z�Z�2:� SKIP X,Y '�W��(Z):Z�Z�1 *'�H��(Z):Z�Z�1 8'�Z�Z�W�H�2 B'�I�I�1 L'�� 630 e'�� FOUND, NOW LOAD IT v'�X��(Z):Z�Z�1 �'�Y��(Z):Z�Z�1 �'�W��(Z):Z�Z�1:X1�X�W�1 �'�H��(Z):Z�Z�1:Y1�Y�H�1 (�� "";CL$;"X=";X;", Y=";Y;", W=";W;", H=";H;", Z=$";�(Z);"";�(27);"J";CL$;"NXT=$";�(Z�W�H�2); J(�ZZ�Z�W�H:P�$800�X�Y�80:PP�$1F800�X�Y�80 Z(� YY�Y � Y1 l(�! 0, W, Z, P �(�! 0, W, ZZ, PP �( Z�Z�W:ZZ�ZZ�W:P�P�80:PP�PP�80 �(4� YY �(>� �(��A 0,0:� �(�� *** IF MOVEMENT, RESTORE ORIGINAL CHAR *** )�� A$��" " � � 4)�  � S�0 � � $800�X�Y�80,T1:� $1F800�X�Y�80,C1 f)  � S�1 � � $800�X�Y�80,T2:� $1F800�X�Y�80,C2 m)� s)� �)� *** SHOW COORDS *** �)�A 0,24:� "                            ";:�A 0,24 �)� S�0 � � �(27)�"QX=";X;", Y=";Y; -*$� S�1 � � �(27)�"QX=";X0;", Y=";Y0;", W=";X�X0�1;", H=";Y�Y0�1; <*.� "     "; B*8� f*L� *** LOCATE NEXT FREE BYTE *** �*VZ�$40001:MX��($40000):I�0 �*`� I�MX � L�Z�$40000:� �*jZ�Z�2 �*tW��(Z):Z�Z�1 �*~H��(Z):Z�Z�1 �*�Z�Z�W�H�2 �*�I�I�1:� 1120   