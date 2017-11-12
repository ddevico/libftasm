; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:21:25 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

section .text
_ft_strlen:
	push rbp
	mov rbp, rsp
	cmp	rdi, 0		;check if str is NULL
	je return
	mov al, 0		;if (rdi[x] == al)
	mov rcx, 0
	not rcx			;0101 0011 -> 1010 1100
	cld
	repne scasb		;if (rdi[x] != a) goto while

endwhile:
	not rcx
	dec rcx
	mov rax, rcx
	leave
	ret

return:
	leave
	ret
