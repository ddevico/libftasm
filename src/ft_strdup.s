; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:24:20 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern _ft_strlen
extern _malloc
extern _ft_memcpy

global _ft_strdup
section .text

_ft_strdup:
	cmp	rdi, 0
	je	error
	mov rbx, rdi
	call _ft_strlen
	inc rax
	mov rdx, rax
	mov rdi, rax
	push rax
	call _malloc
	cmp rax, 0
	je return
	mov rdi, rax
	mov rsi, rbx
	pop rdx
	call _ft_memcpy

return:
	ret

error:
	mov rax, 0
	ret
