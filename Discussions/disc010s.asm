;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write assembly program in 8085 to multiply two numbers 04H and 06H.    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                ;   1st Iterration    | 2nd Iterataiom  
        MVI A 00h   ; Moves data 00h to A register (accumulator).   A = 00            |  
        MVI B 04h   ; Moves data 04h to B register.                 B = 04            |  
BACK:   ADI 06h     ; Add value 06h to A (accumulator).             A = 00 + 06 = 06  | A = 06 + 06 = 0C
        DCR B       ; Decrement the value of B by 1.                B = 03            | B = 02
        JNZ BACK    ; Jump to BACK if Zero flag is not set.
        HLT         ; End program.
