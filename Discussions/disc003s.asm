;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write assembly program in 8085 to transfer 5-bytes of data from memory ;
; stored in 2088...208C to registers B, C, D, E, and H.                  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


LDA 2088h   ; Loads data from 2088 into A (accumulator).
MOV B, A    ; Value of A is moved to B.
LDA 2089h   ; Loads data from 2089 into A (accumulator).
MOV C, A    ; Value of A is moved to C.
LDA 208Ah   ; Loads data from 208A into A (accumulator).
MOV D, A    ; Value of A is moved to D.
LDA 208Bh   ; Loads data from 208B into A (accumulator).
MOV E, A    ; Value of A is moved to E.
LDA 208Ch   ; Loads data from 208C into A (accumulator).
MOV H, A    ; Value of A is moved to H.
HLT         ; End program.
