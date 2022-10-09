00 REM ######## 68N13 = 4800 baud, 8 bit, no parity, 1 stop bit, CTS / DSR / RTS
10 OPEN"O",#1,"COM0:(68N13)"
20 REM ######## DUMP RAM
30 FOR I=&H004E TO &H5FFF
40 IF I MOD16=0 THEN PRINT#1,CHR$(10)+CHR$(13)+HEX$(I)+":"+CHR$(9);
50 A$=HEX$(PEEK(I))
60 IF LEN(A$)<2 THEN PRINT#1,"0"+A$+" "; ELSE PRINT#1,A$+" ";
70 NEXT
80 REM ######## DUMP ROM 5
90 FOR I=&H6000 TO &H7FFF
100 IF I MOD16=0 THEN PRINT#1,CHR$(10)+CHR$(13)+HEX$(I)+":"+CHR$(9);
110 A$=HEX$(PEEK(I))
120 IF LEN(A$)<2 THEN PRINT#1,"0"+A$+" "; ELSE PRINT#1,A$+" ";
130 NEXT
140 REM ######## DUMP ROM 4
150 FOR I=&H8000 TO &H9FFF
160 IF I MOD16=0 THEN PRINT#1,CHR$(10)+CHR$(13)+HEX$(I)+":"+CHR$(9);
170 A$=HEX$(PEEK(I))
180 IF LEN(A$)<2 THEN PRINT#1,"0"+A$+" "; ELSE PRINT#1,A$+" ";
190 NEXT
200 REM ######## DUMP ROM 3,2 and 1
210 FOR I=&HA000 TO &HFFFF
220 IF I MOD16=0 THEN PRINT#1,CHR$(10)+CHR$(13)+HEX$(I)+":"+CHR$(9);
230 A$=HEX$(PEEK(I))
240 IF LEN(A$)<2 THEN PRINT#1,"0"+A$+" "; ELSE PRINT#1,A$+" ";
250 NEXT
260 CLOSE#1
