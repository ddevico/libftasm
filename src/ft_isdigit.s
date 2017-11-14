; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:39:59 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isdigit

section .text
_ft_isdigit:
	push rbp
	mov rbp, rsp
	cmp rdi, 48
	jl no
	cmp rdi, 57
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
