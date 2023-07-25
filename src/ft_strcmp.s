section .text
	global ft_strcmp		;begin, entrypoint

ft_strcmp:
	mov	rax,0				;rax is compter

while:
	mov	bl,[rdi + rax]		;bl = rdi[rax] ;rdi is first arg
	mov	cl,[rsi + rax]		;cl = rsi[rax] ;rsi is second arg
	cmp	bl,0				;compare bl to 0
	je	endwhile			;if bl == 0, go to endwhile
	cmp	bl,cl				;compare bl and cl
	jne	endwhile			;if bl != cl, jump to endwhile
	inc	rax					;rax += 1
	jmp	while				;jump while

endwhile:
	sub		bl,cl			;bl = bl - cl
	movsx	rax,bl			;rax = bl
	ret						;return
