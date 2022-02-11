;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   54h   |  2501h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   EBh   |  2502h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   85h   |  2503h                                                     ;
; +---------+                                                            ;
; |   A8h   |  2504h                                                     ;
; +---------+                                                            ;
; |   99h   |  2505h                                                     ;
; +---------+                                                            ;
; |         |  2506h                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to read 5-bytes of data from memory     ;
; starting at 2501, sort the data in descending order and move to another;
; table starting at 2601.                                                ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        LXI D 2601h
        LXI H 2501h
        MVI B 05h
START:  CALL SUBRT1
        STAX D
        CALL SUBRT2
        INX D
        DCR B
        JNZ START
        HLT
SUBRT1: LXI H 2500h
        MVI C 05h
        SUB A
LOOP1:  INX H
        CMP M
        JNC LOOP2
        MOV A M
LOOP2:  DCR C
        JNZ LOOP1
        RET
SUBRT2: LXI H 2500h
        MOV C M
LOOP3:  INX H
        CMP M
        JZ LOOP4
        DCR C
        JNZ LOOP3
LOOP4:  MVI A 00h
        MOV M A
        RET
