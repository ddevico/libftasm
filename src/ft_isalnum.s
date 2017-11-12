; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/10 11:22:28 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	_ft_isalnum
extern	_ft_isdigit
extern	_ft_isalpha

section .text
_ft_isalnum:
	push rbp
	mov rbp, rsp
	call _ft_isalpha
	cmp	rax, 1
	je	yes
	call _ft_isdigit
	cmp	rax, 1
	je	yes
	mov	rax, 0
	leave
	ret

yes:
	mov	rax, 1
	leave
	ret
