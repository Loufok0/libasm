SYS_READ equ 0

section .text
	global ft_read

ft_read: ;(rdi: int fd, rsi: void *buf, rdx: size_t n)-> rax: ssize_t n_read
	mov rax, SYS_READ
	syscall
	ret
	
