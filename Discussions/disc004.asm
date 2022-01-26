;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   11h   |  2088h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   B7h   |  2089h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   3Eh   |  208Ah                                                     ;
; +---------+                                                            ;
; |   1Fh   |  208Bh                                                     ;
; +---------+                                                            ;
; |   98h   |  208Ch                                                     ;
; +---------+                                                            ;
; |         |  208Dh                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to transfer 5-bytes of data from memory ;
; stored in 2088...208C to registers B, C, D, E, and H.                  ;
; Also add those 5-bytes of data.                                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


LDA 2088h   ; Loads data from 2088 into A (accumulator).    A = 11h
MOV B, A    ; Value of A is moved to B.                     B = 11h
LDA 2089h   ; Loads data from 2089 into A (accumulator).    A = B7h
MOV C, A    ; Value of A is moved to C.                     C = B7h
LDA 208Ah   ; Loads data from 208A into A (accumulator).    A = 3Eh
MOV D, A    ; Value of A is moved to D.                     D = 3Eh
LDA 208Bh   ; Loads data from 208B into A (accumulator).    A = 1Fh
MOV E, A    ; Value of A is moved to E.                     E = 1Fh
LDA 208Ch   ; Loads data from 208C into A (accumulator).    A = 98h
ADD B       ; A = A + B                                     A = A9h
ADD C       ; A = A + C                                     A = 60h
ADD D       ; A = A + D                                     A = 9Eh
ADD E       ; A = A + E                                     A = BDh
HLT         ; End program.
