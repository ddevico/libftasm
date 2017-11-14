; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:37 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat

_ft_strcat:
	push rbp
	mov rbp, rsp
	push rbx
	mov rbx, rdi

while:
	cmp byte [rbx], 0
	je while2
	inc rbx
	jmp while

while2:
	cmp byte [rsi], 0
	je end
	mov al, byte [rsi]
	mov byte [rbx], al
	inc rsi
	inc rbx
	jmp while2

end:
	mov byte [rbx], 0
	mov rax, rdi
	pop rbx
	leave
	ret
