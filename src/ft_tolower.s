; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:45 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global  _ft_tolower
extern  _ft_isupper

section .text
_ft_tolower:
	push rbp
	mov rbp, rsp
    call _ft_isupper
    cmp rax, 1
    je add
    mov rax, rdi
	leave
    ret

add:
    add rdi, 32
    mov rax, rdi
	leave
    ret
