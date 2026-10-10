section .text
	global ft_strcpy

ft_strcpy:
	xor rdx, rdx
	.looop:
		mov al, [rsi + rdx]
		mov [rdi + rdx], al
		inc rdx
		test al, al
		jne .looop

	mov rax, rdi
	ret
