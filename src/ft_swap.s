; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_swap.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 19:38:52 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:44 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_swap

section .text
_ft_swap:
	push rbp
	mov rbp, rsp
	mov rdx, [rdi]
	xchg rdx, [rsi]
	mov [rdi], rdx

end:
	leave
	ret
