; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/13 10:50:01 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define SYSC(nb)	0x2000000 | nb
%define STDOUT			1
%define READ			3
%define WRITE			4

global _ft_cat

section .data
	buffer: times 4096 db 0
	bufsize equ $ - buffer

section .text

_ft_cat:
	push rbp
	mov rbp, rsp
	mov r12, rdi ; save fd

read:
	mov rdi, r12
	lea rsi, [rel buffer]
	mov rdx, bufsize
	mov rax, SYSC(READ)
	syscall
	jc error
	cmp rax, 0
	jle error
	mov r11, rax ; save nb of byte readed
print:
	mov rdi, STDOUT
	mov rdx, r11
	mov rax, SYSC(WRITE)
	syscall
	jc error
	jmp read

error:
	mov rax, 0
	leave
	ret
