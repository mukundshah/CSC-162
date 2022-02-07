;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   29h   |  2058h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   BCh   |  2059h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   A8h   |  205Ah                                                     ;
; +---------+                                                            ;
; |   6Fh   |  205Bh                                                     ;
; +---------+                                                            ;
; |   53h   |  205Ch                                                     ;
; +---------+                                                            ;
; |         |  205Dh                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to count even and odd numbers among 15- ;
; bytes of data stored in memory.                                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                ;   1st Iterration    | 2nd Iterataiom  
        LXI B 2058h ; Moves data 2058h to BE register pair.         B = 20, C = 58    |  
        MVI D 0Fh   ; Moves data 0Fh to D register.                 D = 0F            |     
        MVI E 00h   ; Moves data 00h to E register.                 E = 00            |    
        MVI H 00h   ; Moves data 00h to H register.                 H = 00            |
BACK:   LDAX B      ; Loads data from memory pointed by DE into A.  A = 29            | A = BC
        RRC         ; Right rotate the value in Acc. without carry. A = 94, CY = 1    | A = 5E, CY = 0
        JC ODD      ; Jump to ODD if Carry flag is set.                               | 
        INR E       ; Increment the value of E by 1, if even.                         | E = 01
        JMP NEXT    ; Jump to NEXT                                                    | 
ODD:    INR H       ; Increment the value of H by 1, if odd.        H = 01            | 
NEXT:   INX B       ; Increment the value of BC by 1.               B = 20, C = 59    | B = 20, C = 5A
        DCR D       ; Decrement the value of D by 1.                D = 0E            | D = 0D
        JNZ BACK    ; Jump to BACK if Zero flag is not set.
        HLT         ; End program.
