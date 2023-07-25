section .text
	global _hw				;begin, entrypoint

_hw:
	mov rdi,1				;fd
	mov rsi,hw				;const char *buf
	mov rdx,13				;length buf
	mov rax,1				;system call sys_write
	syscall
	ret

section .data
hw		db "Hello World!",10	;db is databyte, 10 is \n in decimal
hw_size	EQU $ - hw
