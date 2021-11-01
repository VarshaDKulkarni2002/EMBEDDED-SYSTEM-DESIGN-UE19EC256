 AREA strcpy, CODE, READWRITE 
	adr r0,source 
	adr r1,destination 
	mov r2,#8 
loop1 ldrb r3,[r0]
41
4
41111\\14\\\\\414\14*1001010101
0+001100+++++++*+00000+	   ldrb r4,[r1] 
	strb r4,[r0],#1
	strb r3,[r1],#1
	subs r2,r2,#1 
	bne loop1 
source dcb 'v','a','r','s','h','a'; 
destination dcb 'p','r','e','e','t','i'
	END