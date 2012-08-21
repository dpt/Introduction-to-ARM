; thumb-example.s

mystery	
	MOV	r1, r0
	SUB	r1, #'A'
	CMP	r1, #'Z' - 'A'
	BHI	exit
	ADD	r0, #'a' - 'A'
exit		
	BX	lr

	END

