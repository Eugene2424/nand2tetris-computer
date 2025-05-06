//SCREEN, KBD

(PRESSING)
@KBD
D=M

@FILL
D;JNE

@PRESSING
0;JMP


(NOTPRESSING)
@KBD
D=M

@CLEAR
D;JEQ

@NOTPRESSING
0;JMP


(FILL)

// address = &SCREEN
@SCREEN
D=A
@address
M=D

@8191
D=A
@iterations
M=D

@i
M=0

(LOOP1)

@address
D=M
@i
D=D+M
A=D
M=-1

@i
D=M
@iterations
D=M-D

@NOTPRESSING
D;JEQ

@i
M=M+1

@LOOP1
0;JMP


(CLEAR)

@i
M=0

(LOOP2)

@address
D=M
@i
D=D+M
A=D
M=0

@i
D=M
@iterations
D=M-D

@PRESSING
D;JEQ

@i
M=M+1

@LOOP2
0;JMP

