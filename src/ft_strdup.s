section .text
	global ft_strdup				;begin, entrypoint
	extern	malloc
	extern	ft_strlen
	extern	ft_strcpy
	extern	__errno_location

ft_strdup:
	call	ft_strlen				;length of rdi in rax
	inc		rax						;rax + 1
	mov		rbx,rdi					;keep value rdi
	mov		rdi,rax					;value to malloc
	call	malloc					;call malloc, return pointer to rax
	cmp		rax,0					;compare rax and 0
	jl		errno					;jump to error
	mov		rdi,rax					;rdi = rax
	mov		rsi,rbx					;rsi = rsx
	call	ft_strcpy				;call ft_strcpy, return value in rax
	ret								;return

errno:
	neg		rax						;absolute value
	mov		rdi,rax					;rdi = rax
	call	__errno_location		;call to errno location
	mov		[rax],rdi				;set the value to errno
	mov		rax,0					;rax = 0
	ret
