section .text
	global ft_strdup				;begin, entrypoint
	extern	malloc
	extern	ft_strlen
	extern	ft_strcpy

ft_strdup:
	call	ft_strlen				;length of rdi in rax
	inc		rax						;rax + 1
	mov		rbx,rdi					;keep value rdi
	mov		rdi,rax					;value to malloc
	call	malloc					;call malloc, return pointer to rax
	mov		rdi,rax					;rdi = rax
	mov		rsi,rbx					;rsi = rsx
	call	ft_strcpy				;call ft_strcpy, return value in rax
	ret								;return
