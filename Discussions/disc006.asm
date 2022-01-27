;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Memomry:                  Register:                                    ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   58h   |  2061h        |  A  |  B  |  C  |  D  |  E  |  H  |  L  |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   24h   |  2062h        |     |     |     |     |     |     |     |  ;
; +---------+               +-----+-----+-----+-----+-----+-----+-----+  ;
; |   1Fh   |  2063h                                                     ;
; +---------+                                                            ;
; |   C9h   |  2064h                                                     ;
; +---------+                                                            ;
; |   EFh   |  2065h                                                     ;
; +---------+                                                            ;
; |         |  2066h                                                     ;
; +---------+                                                            ;
;                                                                        ;
; Write assembly program in 8085 to transfer 5-bytes of data from memory ;
; to register B, C, D, E and A respectively. Use HL as memory pointer.   ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


LXI H 2061h ; Loads memory address as data into HL register pair.   H = 20, L = 61
MOV B M     ; Value of M is moved to B.                             B = 58
INX H       ; Increment value of HL register pair.                  H = 20, L = 62
MOV C M     ; Value of M is moved to C.                             C = 24
INX H       ; Increment value of HL register pair.                  H = 20, L = 63
MOV D M     ; Value of M is moved to D.                             D = 1F
INX H       ; Increment value of HL register pair.                  H = 20, L = 64
MOV E M     ; Value of M is moved to E.                             E = C9
INX H       ; Increment value of HL register pair.                  H = 20, L = 65
MOV A M     ; Value of M is moved to A.                             A = EF
HLT         ; End program
