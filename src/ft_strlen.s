; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:43 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

section .text

_ft_strlen:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je end
	mov rcx, -1
	mov al, 0
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	leave
	ret

end:
	mov rax, 0
	leave
	ret
