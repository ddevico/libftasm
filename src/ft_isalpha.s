; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:16:53 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalpha

section .text
_ft_isalpha:
	push rbp
	mov rbp, rsp
	cmp rdi, 65
	jl no
	cmp rdi, 122
	jg no
	cmp rdi, 90
	jle yes
	cmp rdi, 97
	jge yes

	jmp no

yes:
	mov rax, 1
	jmp return

no:
	mov rax, 0
	jmp return

return:
	leave
	ret
