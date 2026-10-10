section .text
	global ft_strlen

ft_strlen:
	
	xor rax, rax			;set counter to 0
	dec rax
	.looop:
		inc rax
		cmp [rdi + rax], 0
		jne .looop

	ret
