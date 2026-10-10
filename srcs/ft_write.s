SYS_WRITE equ 1

section .text
	global ft_write

ft_write:
	mov rax, SYS_WRITE
	syscall
	ret
	
