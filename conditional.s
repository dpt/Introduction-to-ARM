; conditional.s

; The following code fragment is a loop which runs until the counter in R1 hits
; zero, at which point the condition code NE (not equal to zero) controlling
; the branch becomes false.

	MOV   r1, #10
loop
	...
	SUBS  r1, r1, #1
	BNE   loop

; Use a sequence of several conditional instructions:

	CMP   r0, #5   ; if (a == 5)
	MOVEQ r0, #10  ;
	BLEQ  fn       ;   fn(10)

; (Assume a is in R0. Compare R0 to 5. The next two instructions will be
; executed only if the compare returns EQual. They move 10 into R0, then call
; ‘fn’ (branch with link, BL).)

; Set the flags, then use various condition codes:

	CMP   r0, #0   ; if (x < 0)
	MOVLE r0, #0   ;   x = 0;
	MOVGT r0, #1   ; else x = 1;

; Use conditional compare instructions:

	CMP   r0, #'A' ; if (c == 'A'
	CMPNE r0, #'B' ;  || c == 'B')
	MOVEQ r1, #1   ;   y = 1;

; A sequence which doesn’t use conditional execution:

	CMP   r3, #0
	BEQ   next
	ADD   r0, r0, r1
	SUB   r0, r0, r2
next
	...

; By transforming the sequence with conditional execution an instruction can be
; removed:

	CMP   r3, #0
	ADDNE r0, r0, r1
	SUBNE r0, r0, r2
	...

	END

