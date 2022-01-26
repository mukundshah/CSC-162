;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |         |  2078h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |         |  2079h        |     | 07h |     | 90h |     | C7h |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |         |  207Ah                                                     ;
; +---------+                                                            ;
; |         |  207Bh                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Assembly program in 8085 to transfer data from Register to memory.     ;
; Also, load data from memory to register.                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MOV A, B    ; Value of B is moved to A.                     A = 07h
STA 2078h   ; Store value from A (accumulator) to 2078      [2078] = 07h
MOV A, D    ; Value of D is moved to A.                     A = 90h
STA 2079h   ; Store value from A (accumulator) to 2078      [2079] = 90h
LDA 2046h   ; Loads data from 2046 into A (accumulator).    A = 01h
MOv D, A    ; Value of A is moved to D.                     D = 01h
LDA 2047h   ; Loads data from 2047 into A (accumulator).    A = 20h
HLT         ; End program.
