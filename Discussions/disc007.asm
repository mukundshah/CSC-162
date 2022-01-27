;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write a program to load memory locations 7090H and 7080H with data 40H ;
; and 50H and then swap these data.                                      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


MVI H 70h   ; Moves data 70h to H register.                         H = 70
MVI L 90h   ; Moves data 90h to L register.                         L = 90
MVI A 40h   ; Moves data 40h to A register (accumulator).           A = 40
MOV M A     ; Value of A is copied to M (memory pointed by HL).     [7090] = 40
MOV C M     ; Value of M (memory poinred by HL) is copied to C.     C = 40
MVI L 80h   ; Moves data 80h to L register.                         L = 80
MVI B 50h   ; Moves data 50h to B register.                         B = 50
MOV M B     ; Value of B is copied to M (memory pointed by HL).     [7080] = 50
MOV D M     ; Value of M (memory poinred by HL) is copied to D.     D = 50
MOV M C     ; Value of C is copied to M (memory pointed by HL).     [7080] = 40
MVI L 90h   ; Moves data 90h to L register.                         L = 90
MOV M D     ; Value of D is copied to M (memory pointed by HL).     [7090] = 50
HLT         ; End program
