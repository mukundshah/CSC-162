;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write assembly program in 8085 to convert 2-digit BCD to its binary    ;
; equivalent.                                                            ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        MVI A, 12h
        MOV B, A
        ANI 0Fh
        MOV C, A 
        MOV A, B
        ANI F0h
        JZ SKIP 
        RRC 
        RRC 
        RRC 
        RRC 
        MOV D, A
        XRA A
        MVI E, 0Ah 
SUM:    ADD D 
        DCR E 
        JNZ SUM 
SKIP:   ADD C 
        STA 2020H 
        HLT
