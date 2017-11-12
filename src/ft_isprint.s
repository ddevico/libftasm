; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/15 17:03:24 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:19:24 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isprint

section .text
_ft_isprint:
	push rbp
	mov rbp, rsp
	cmp rdi, 32
	jl no
	cmp rdi, 126
	jg no

yes:
	mov rax, 1
	jmp return

no:
	mov rax, 0
	jmp return

return:
	leave
	ret
