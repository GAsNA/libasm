section .text
	global ft_read			;begin, entrypoint

ft_read:
	mov	rax,0
	syscall
	ret						;return
