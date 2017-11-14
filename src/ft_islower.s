; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:00 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global  _ft_islower

section .text

_ft_islower:
	push rbp
	mov rbp, rsp
    cmp rdi, 97
    jl end
    cmp rdi, 122
    jg end
    mov rax, 1
	leave
    ret

end:
    mov rax, 0
	leave
	ret
