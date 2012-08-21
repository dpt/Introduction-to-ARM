	AREA	|.text|, CODE, READONLY

; int factorial(int N);

	EXPORT	factorial

factorial		    ; On entry, N is stored in R0.
	MOVS	r1, r0	    ; R1 is our loop counter. Copy N to R1 and test.
	MOVEQ	r0, #1	    ; if (R1 == 0) Set result to 1 and fall through to return...
loop
	SUBNES	r1, r1, #1  ; if (R1 != 0) Decrement R1 and test.
	MULNE	r0, r1, r0  ; if (R1 != 0) Result = R1 * Result.
	BNE	loop	    ; if (R1 != 0) Loop.
	MOV	pc, r14     ; Return with result in R0.

	END

