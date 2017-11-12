; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:19:51 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
global _ft_memset

_ft_memset:
	push rbp
	mov rbp, rsp
	mov rbx, rdi	;save void *s addr
	mov rcx, rdx	;copy size in cmpt for stosb
	cmp	rcx, 0		;cmp size to 0
	jle	return
	cmp rdi, 0		;check if ptr is NULL
	je return
	mov	rax, rsi	;cp int in rax for stosb can use it
	cld
	rep stosb		;while rcx(size(rdx)) > 0 copy byte (rax(int c(rsi))) in rdi

return:
	mov rax, rbx
	leave
	ret
