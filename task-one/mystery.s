	AREA	|.text|, CODE, READONLY

	EXPORT	mystery

mystery
	SUB	r1, r0, #'A'
	CMP	r1, #'Z' - 'A'
	ADDLS	r0, r0, #'a' - 'A'
	MOV	pc, r14

	END

