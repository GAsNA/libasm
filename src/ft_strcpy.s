section .text
	global ft_strcpy		;begin, entrypoint

ft_strcpy:
	cmp	rsi,0				;compare rsi to null
	je	end
	mov	rcx,0				;rcx is compter

while:
	cmp	byte [rsi + rcx],0	;compare rsi[rcx] to 0 ;rsi is second arg
	je	endwhile			;if rsi[rcx] == 0, go to endwhile
	mov rdx,[rsi + rcx]		;copy rsi[rcx] to rdx
	mov [rdi + rcx],rdx		;copy rdx to rdi[rcx]
	inc	rcx					;rcx += 1
	jmp	while				;jump while

endwhile:
	mov byte [rdi + rcx],0	;add \0 to rdi

end:
	mov	rax,rdi				;rax = rdi for return rdi ;rdi is first arg
	ret						;return
