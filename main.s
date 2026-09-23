section .data
	EXIT_SUCCESS equ 0
	EXIT_FAILURE equ 1
	STDIN equ 0
	STDOUT equ 1
	SYS_READ equ 0
	SYS_WRITE equ 1
	SYS_EXIT equ 60

	s db "Hello world!", 0

section .text
	global _start
	extern ft_strlen

_start:
	mov rdi, s
	call ft_strlen
	mov rax, SYS_EXIT
	mov rdi, EXIT_SUCCESS
	syscall
