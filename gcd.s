 AREA GCD, CODE, READONLY
		ENTRY
		MOV R0,#25
		MOV R1,#5
BACK 	CMP R0,R1
		BEQ Label
		BLT lessd
		SUB R0,R0,R1
		B BACK
lessd 	SUB R1,R1,R0
		B BACK
Label B Label
		end