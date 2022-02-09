;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 8085 CALL, RET and subroutine example:                                 ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        MOV A, B
        CALL SUBRTN
        ANA C
        SUB L
        CALL SUBRTN
        ANA B
        CMA
        STC
        ADD B
        CALL SUBRTN
        INR C
        CALL SUBRTN
SUBRTN: ADD B
        ORA D
        RET
