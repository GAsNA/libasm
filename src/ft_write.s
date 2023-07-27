section .text
	global ft_write			;begin, entrypoint
	extern __errno_location

ft_write:
	mov		rax,1			;rax = 1, 1 is for sys write
	syscall					;system call
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

;https://stackoverflow.com/questions/62046052/how-to-change-errno-value-in-asm-x64
