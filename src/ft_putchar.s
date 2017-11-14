; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:31 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define MACH_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define WRITE 4

global _ft_putchar

section		.data
	char:		db	0, 0

section .text
_ft_putchar:
	push rbp
	mov rbp, rsp
	mov	[rel char], rdi
	mov rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel char]
	mov rdi, 1
	mov rdx, 1
	syscall
	leave
	ret
