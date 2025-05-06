// R0 and R1 - numbers
// R2 - operation
// R3 - result

@R2
D=M
@R3
M=0

@PLUS
D;JEQ

@MINUS
D-1;JEQ

D=D-1
@MULTIPLY
D-1;JEQ

@END
0;JMP

(PLUS)
@R0
D=M
@R1
D=D+M
@R3
M=D

@END
0;JMP

(MINUS)
@R0
D=M
@R1
D=D-M
@R3
M=D

@END
0;JMP

(MULTIPLY)
@i
M=1

(LOOP)
@R0
D=M
@R3
M=D+M
@i
M=M+1

@i
D=M-1
@R1
D=D-M

@END
D;JEQ

@LOOP
0;JMP

(END)
@END
0;JMP