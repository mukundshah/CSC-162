;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   01h   |  2046h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   20h   |  2047h        |     | 07h |     | 90h |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   C9h   |  2048h                                                     ;
; +---------+                                                            ;
; |         |  2049h                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Assembly program in 8085 to transfer data from Register B to C, and D  ;
; to H.                                                                  ;
; Also, load data from memory to register.                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MOV C, B    ; Value of C is moved to B.                     C = 07h
MOV H, D    ; Value of D is moved to H.                     H = 90h
LDA 2046h   ; Loads data from 2046 into A (accumulator).    A = 01h
MOv D, A    ; Value of A is moved to D.                     D = 01h
LDA 2047h   ; Loads data from 2047 into A (accumulator).    A = 20h
HLT         ; End program.
