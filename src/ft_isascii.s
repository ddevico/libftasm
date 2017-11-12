; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/15 16:45:30 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:15:45 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isascii

section .text
_ft_isascii:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	jl no
	cmp rdi, 127
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
