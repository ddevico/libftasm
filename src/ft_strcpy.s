; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/15 17:03:24 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:39 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern	_ft_strlen
extern	_ft_memcpy

section .text
global	_ft_strcpy

_ft_strcpy:
	push rbp
	mov rbp, rsp
	mov r12, rdi
	mov rdi, rsi
	call _ft_strlen
	mov rdx, rax
	mov rdi, r12
	call _ft_memcpy
	leave
	ret
