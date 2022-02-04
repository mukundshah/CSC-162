;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   A5h   |  C001h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   07h   |  C002h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   CAh   |  C003h                                                     ;
; +---------+                                                            ;
; |   07h   |  C004h                                                     ;
; +---------+                                                            ;
; |   07h   |  C005h                                                     ;
; +---------+                                                            ;
; |         |  C006h                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to find how many times 07h is repeated  ;
; among 20-bytes of data stored in memory.                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                ;   1st Iterration    | 2nd Iterataiom  
        LXI H C001h ; Moves data C000 to HL register pair.          H = C0, L = 01    |  
        MVI C 14h   ; Moves data 14h to C register.                 C = 14            |     
        MVI B 00h   ; Moves data 00h to B register.                 B = 00            |     
BACK:   MOV A M     ; Value of M is copied to A.                    A = A5            | A = 07
        CPI 07h     ; Compare A with 07h.                           Z = 0             | Z = 1
        JNZ NEXT    ; Jump to NEXR if Zero flag is not set.
        INR B       ; Increment the value of B by 1.                                  | B = 01
NEXT:   INX H       ; Increment the value of HL by 1.               H = C0, L = 02    | H = C0, L = 03  
        DCR C       ; Decrement the value of B by 1.                C = 13            | C = 12   
        JNZ BACK    ; Jump to BACK if Zero flag is not set.
        HLT         ; End program.
