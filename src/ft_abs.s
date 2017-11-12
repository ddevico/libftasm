; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_abs.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 19:38:52 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/12 16:03:52 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
global _ft_abs

_ft_abs:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp eax, 0
	jl end
	leave
	ret

end:
	neg rax
	leave
	ret
