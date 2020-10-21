section .data
	text db "Hello, World!",10
	len equ 14
	sys_write equ 1
	stdout equ 1

	sys_exit equ 60
	sts equ 0

section .text
	global _start

_start:
	mov rax, sys_write
	mov rdi, stdout
	mov rsi, text
	mov rdx, len
	syscall

	mov rax, sys_exit
	mov rdi, sts
	syscall
