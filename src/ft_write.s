section .text
	global ft_write			;begin, entrypoint

ft_write:
	mov	rax,1
	syscall
	ret						;return
