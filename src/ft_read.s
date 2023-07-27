section .text
	global	ft_read			;begin, entrypoint
	extern	__errno_location

ft_read:
	mov	rax,0
	syscall
	cmp		rax,0			;compare rax and 0
	jl		errno			;jump to error
	ret						;return

errno:
	neg		rax					;absolute value
	mov		rdi,rax				;rdi = rax
	call	__errno_location	;call to errno location
	mov		[rax],rdi			;set the value to errno
	mov		rax,-1				;rax = -1
	ret
