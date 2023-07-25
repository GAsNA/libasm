section .text
	global ft_strlen		;begin, entrypoint

ft_strlen:
	mov	rax,0				;rax (return value, reg return) to 0

while:
	cmp	byte [rdi + rax], 0	;compare rdi[rax] to 0
	je	endwhile			;if rdi[rax] == 0, go to endwhile
	inc	rax					;rax += 1
	jmp	while				;jump while

endwhile:
	ret						;return
