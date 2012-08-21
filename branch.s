; branch.s

; Branching forward, to skip over some code:

	...		; some code here
	B fwd		; jump to label 'fwd'
	...		; more code here
fwd

; Branching backwards, creating a loop:

back
	...		; more code here
	B back		; jump to label 'back'

; Using BL to call a subroutine: 

	...
	...
	BL  calc	; call 'calc'
	...		; returns to here
	...

calc			; function body
	ADD r0,r1,r2	; do some work here
	MOV pc, r14	; PC = R14 to return

	END

