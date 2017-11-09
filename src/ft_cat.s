; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/09 10:56:10 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define	SYSC(nb)			0x2000000 | nb
%define	READ				3
%define WRITE				4

global _ft_cat

extern _ft_strlen

section .data
	buffer times 255 db 0
	bufsize equ $ - buffer

section .text

_ft_cat:
	push rdi
	lea rsi, [rel buffer]
	mov rdx, bufsize
	mov rax, SYSC(READ) ; put rax to `read` sys call
	syscall
	jc err
	cmp rax, 0
	je end

print:
	mov rdi, 1
	mov rdx, rax ; size to write
	mov rax, SYSC(WRITE) ; put rax to `write` sys call
	syscall ; WRITE
	jc err
	pop rdi ; recuperate fd
	jmp _ft_cat ; loop

err:
	pop rdi
	mov rax, 1

end:
	ret
