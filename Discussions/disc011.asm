;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   CBh   |  2059h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   28h   |  205Ah        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   AEh   |  205Bh                                                     ;
; +---------+                                                            ;
; |   CFh   |  205Ch                                                     ;
; +---------+                                                            ;
; |   17h   |  205Dh                                                     ;
; +---------+                                                            ;
; |         |  205Eh                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to find smallest nuMber among 10-bytes  ;
; of data stored in memory.                                              ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                ;   1st Iterration    | 2nd Iterataiom  
        LDA 2059h   ; Loads data from 2059 into A (accumulator).
        MVI B 0Ah   ; Moves data 0Ah to B register.
        MOV C A     ; Value of A is copied to C.
        LXI D 205Ah ; Moves data 205Ah to DE register pair.
BACK:   LDAX D      ; Loads data from memory pointed by DE into A.
        CMP C       ; Compare A with C.
        JNC NEXT    ; Jump to NEXR if Zero flag is not set.
        MOV C A     ; Value of A is copied to C.
NEXT:   INX D       ; Increment the value of DE by 1.
        DCR B       ; Decrement the value of B by 1.
        JNZ BACK    ; Jump to BACK if Zero flag is not set.
        HLT         ; End program.
