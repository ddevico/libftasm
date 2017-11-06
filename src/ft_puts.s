; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/06 11:43:47 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_puts

section .data
	message:    db      `\n`
	null:   db      "(null)"

section .text
_ft_puts:
	cmp rdi, 0
	je aff_null
	xor rcx, rcx
	mov rbx, rdi

_begin_loop:
	cmp BYTE [rbx], 0
	je print
	inc rbx
	inc rcx
	jmp _begin_loop

print:
	mov rsi, rdi ; message
	mov rdi, 1 ; fd
	mov rdx, rcx; length
	mov rax, 0x2000004 ; write
	syscall

return:
	lea rsi, [rel message]
	mov rdx, 1 ; length
	mov rax, 0x2000004 ; write
	syscall

	mov rax, 10
	ret

aff_null:
	mov rdi, 1
	lea rsi, [rel null]
	mov rdx, 6
	mov rax, 0x2000004 ; write
	syscall
	jmp return
