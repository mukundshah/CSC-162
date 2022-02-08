;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; [C0C1]=? and [C0C0]=?                                                  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
                                                                ;   1st Iterration    | 2nd Iterataiom    | 3rd Iteration    | 4th Iteration    | 5th Iteration    
        MVI A 0Eh   ; Moves data 0Eh to A register.                 A = 0E            |                   |                  |                  | 
        MVI B 03h   ; Moves data 03h to B register.                 B = 03            |                   |                  |                  | 
        MVI C 00h   ; Moves data 00h to C register.                 C = 00            |                   |                  |                  | 
LOOP1:  CMP B       ; Compare A with B.                             CY = 0, Z = 0     | CY = 0, Z = 0     | CY = 0, Z = 0    | CY = 0, Z = 0    | CY = 1, Z = 0 
        JC NEXT     ; Jump to NEXT if Carry flag is set.                              |                   |                  |                  | 
        INR C       ; Increment the value of C by 1.                C = 01            | C = 02            | C = 03           | C = 04           | 
        SUB B       ; Subtract value of B from Acc.                 A = 0B            | A = 08            | A = 05           | A = 02           | 
        JMP LOOP1   ; Jump to LOOP1                                                   |                   |                  |                  | 
NEXT:   STA C0C1h   ; Value of A is copied to C0C1 memory address.                    |                   |                  |                  | [C0C1] = 02
        MOV A C     ; Value of C is copied to A                                       |                   |                  |                  | A = 04     
        STA C0C0h   ; Value of A is copied to C0C0 memory address.                    |                   |                  |                  | [C0C0] = 04
        HLT         ; End program.
