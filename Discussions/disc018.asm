;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   14h   |  4001h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   07h   |  4002h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   CAh   |  4003h                                                     ;
; +---------+                                                            ;
; |   07h   |  4004h                                                     ;
; +---------+                                                            ;
; |   07h   |  4005h                                                     ;
; +---------+                                                            ;
; |   ...   |  4006h                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to add even number only among 20-bytes  ;
; of data stored in memory.                                              ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        LDA 4001h 
        MOV C A
        MVI B 00h
        MVI D 00h
        LXI H 4002h
BACK:   MOV A M
        ANI 01h
        JNZ SKIP
        MOV A B
        ADD M
        JNC NOCY
        INR D
NOCY:   MOV B A
SKIP:   INX H
        DCR C
        JNZ BACK
        MOV A B
        STA 4420h
        HLT
