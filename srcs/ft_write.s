SYS_WRITE equ 1

section .text
	global ft_write

ft_write: ;(rdi: int fd, rsi: const void *buf, rdx: size_t n)-> rax: ssize_t n_written

	mov rax, SYS_WRITE
	syscall
	ret
	
