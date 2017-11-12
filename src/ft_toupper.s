; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:17:57 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global  _ft_toupper
extern  _ft_islower

section .text
_ft_toupper:
	push rbp
	mov rbp, rsp
    call _ft_islower
    cmp rax, 1
    je sub
    mov rax, rdi
	leave
    ret

sub:
    sub rdi, 32
    mov rax, rdi
	leave
    ret
