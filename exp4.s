 AREA CONVOLUTION, CODE, READwrite 

	ADR R0,SEQ1

	ADR R5, RES

	MOV R10, #4

	MOV R9,#1



BACK MOV R2,#0

	ADR R1, SEQ2

	MOV R11,R9

	BL PROD

	STR R2, [R5],#4

	ADD R9, R9, #1

	MOV R12, R9, LSL #2

	ADD R0, R0, R12

	SUBS R10,R10, #1

	BNE BACK



	MOV R10,#3

	MOV R12, #4

BACK1 ADR R1, SEQ2

	ADR R0, SEQ1+12

	MOV R2, #0

	ADD R1, R1, R12

	MOV R11, R10

	BL PROD

	STR R2, [R5], #4

	ADD R12, R12, #4

	SUBS R10, R10, #1

	BNE BACK1

EXIT B EXIT

 
PROD LDR R3,[R0],#-4

	LDR R4,[R1],#4

	MLA R2,R3,R4,R2

	SUBS R11,R11,#1

	BNE PROD

	MOV PC,LR

SEQ1 DCD 1,2,3,4

SEQ2 DCD 5,6,7,8

RES SPACE 100

	END