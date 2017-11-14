; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:04 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memcpy

section .text
_ft_memcpy:
	push rbp
	mov rbp, rsp
	mov r10, rdi	;save void *s addr
	mov rcx, rdx	;copy size in cmpt for stosb
	cmp	rcx, 0		;check if size is 0
	jle	return
	cmp	r10, 0		;check if ptr dst is NULL
	je	return
	cmp	rsi, 0		;check if ptr src is NULL
	je	return
	cld
	rep movsb		;while rcx > 0, copy rsi in rdi

return:
	mov rax, r10
	leave
	ret
