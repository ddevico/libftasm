; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/14 09:40:38 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strchr

_ft_strchr:
	push rbp
	mov rbp, rsp
	mov	rdx, rsi
	cmp rdi, 0
	je return

while:
	cmp byte [rdi], dl
	je end
	cmp byte [rdi], 0
	je return
	inc rdi
	jmp while

return:
	mov rax, 0
	leave
	ret

end:
	mov rax, rdi
	leave
	ret
