;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   21h   |  2046h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   11h   |  2047h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   02h   |  2048h                                                     ;
; +---------+               Flags:                                       ;
; |   30h   |  2049h        +-----+-----+------+-----+------+            ;
; +---------+               |  S  |  Z  |  AC  |  P  |  CY  |            ;
; |   12h   |  204Ah        +-----+-----+------+-----+------+            ;
; +---------+               |     |     |      |     |      |            ;
; |         |  204Bh        +-----+-----+------+-----+------+            ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to add 5-bytes of data stored in memory.;
; Use the concept of loop.                                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                                                                ;   1st Iterration    | 2nd Iterataiom  
        LXI H 2046h ; Moves data 2046 to HL register pair.          H = 20, L = 46    |  
        MVI A 00h   ; Moves data 00h to A register (accumulator).   A = 00            |  
        MVI B 05h   ; Moves data 05h to B register.                 B = 05            |  
BACK:   ADD M       ; Add value from M to A (accumulator).          A = 00 + 21 = 21  | A = 21 + 11 = 32
        INX H       ; Increment the value of HL by 1.               H = 20, L = 47    | H = 20, L = 48
        DCR B       ; Decrement the value of B by 1.                B = 04            | B = 03
        JNZ BACK    ; Jump to BACK if Zero flag is not set.
        HLT         ; End program.
