section .text
	global ft_strcmp

ft_strcmp: ;(rdi: const char *s1, rsi: const char *s2)->rax: int ascii_diff
	xor rcx, rcx
	dec rcx

	.looop:
		inc rcx
		mov al, [rsi + rcx]
		cmp [rdi + rcx], al
		je .looop

	mov rax, [rdi + rcx]
	sub rax, [rsi + rcx]
	ret
