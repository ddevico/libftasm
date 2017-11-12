; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:19:37 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global  _ft_isupper

section .text

_ft_isupper:
	push rbp
	mov rbp, rsp
    cmp rdi, 65
    jl end
    cmp rdi, 90
    jg end
    mov rax, 1
	leave
    ret

end:
    mov rax, 0
	leave
    ret
