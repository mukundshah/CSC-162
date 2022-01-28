;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   7Eh   |  2058h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   51h   |  2059h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   C9h   |  205Ah                                                     ;
; +---------+               Flags:                                       ;
; |   D3h   |  205Bh        +-----+-----+------+-----+------+            ;
; +---------+               |  S  |  Z  |  AC  |  P  |  CY  |            ;
; |   78h   |  205Ch        +-----+-----+------+-----+------+            ;
; +---------+               |     |     |      |     |      |            ;
; |         |  205Dh        +-----+-----+------+-----+------+            ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to add 5-bytes of data stored in memory.;
; Store the 16-bit result at the end of memory.                          ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                ;   1st Iterration    | 2nd Iterataiom  
        LXI H 2058h ; Moves data 2046 to HL register pair.          H = 20, L = 58    |  
        MVI A 00h   ; Moves data 00h to A register (accumulator).   A = 00            |  
        MVI B 05h   ; Moves data 05h to B register.                 B = 05            |  
        MVI C 00h   ; Moves data 00h to C register.                 C = 00            |  
BACK:   ADD M       ; Add value from M to A (accumulator).          A = 00 + 7E = 7E  | A = 7E + 51 = BF
        JNC NEXT    ; Jump to NEXT if carry flag is not set.
        INR C       ; Increment the value of C by 1.                C = 01            | C = 02
NEXT:   INX H       ; Increment the value of HL by 1.               H = 20, L = 59    | H = 20, L = 5A
        DCR B       ; Decrement the value of B by 1.                B = 04            | B = 03
        JNZ BACK    ; Jump to BACK if Zero flag is not set.
        STA 205Dh   ; Value of A is copied to 205D memory address.  [205D] = 
        MOV A C     ; Value of c is copied to A.                    A = 
        STA 205Eh   ; Value of A is copied to 205E memory address.  [205E] = 
        HLT         ; End program.
