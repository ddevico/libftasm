; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_abs.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 19:38:52 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/12 14:43:17 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
global _ft_abs

_ft_abs:
	mov rax, rdi
	cmp eax, 0
	jl neg
	ret

neg:
	neg rax
	ret
