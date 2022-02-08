;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   35h   |  2041h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   10h   |  2042h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   02h   |  2043h                                                     ;
; +---------+                                                            ;
; |   21h   |  2044h                                                     ;
; +---------+                                                            ;
; |   F0h   |  2045h                                                     ;
; +---------+                                                            ;
; |         |  2046h                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to sort 5-bytes of data from memory in  ;
; ascending order.                                                       ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


START:  LXI H 2041h
        MVI D 00h
        MVI C 05h
CHECK:  MOV A M
        INX H
        CMP M
        JC NXTBYT
        MOV B M
        MOV M A
        DCX H
        MOV M B
        INX H
        MVI D 01h
NXTBYT: DCR C
        JNZ CHECK
        CPI 01h
        JZ START
        HLT
