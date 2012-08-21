; immediates.s

; You can form constants wider than those available in a single instruction by
; using a sequence of instructions to build up the constant. For example:

	MOV r2, #0x55		; R2 = 0x00000055
	ORR r2, r2, r2, LSL #8	; R2 = 0x00005555
	ORR r2, r2, r2, LSL #16 ; R2 = 0x55555555

; ...or load the value from memory:

	LDR r2, =0x55555555

; The pseudo-instruction LDR Rx,=const tries to form the constant in a single
; instruction, if possible, otherwise it will generate an LDR.

	END

