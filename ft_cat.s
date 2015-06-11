# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 06:15:35 by jwalle            #+#    #+#              #
#    Updated: 2015/06/11 21:44:18 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define READ				3
%define WRITE				4
%define BUFF_SIZE			100


section .text
	global _ft_cat

_ft_cat:
	cmp rdi, 0
	jl .end

.loop:
	mov rax, MACH_SYSCALL(READ)		; rax = read
	push rdi						; rdi (fd) on stack
	lea rsi, [rel buffsize]			; load RELative adress of buffsize in rsi (string buf)
	mov rdx, buff_size				; place this adress minus 1 in rdx	(buf size)
	syscall							; call read
	jc	.end						; if fail end
	cmp rax, 0						; if no ret end (EOF)
	je .end
	mov rax, MACH_SYSCALL(WRITE)	; print result
	mov	rdi, STDOUT
	mov rdx, buff_size
	syscall
	pop rdi
	jmp .loop

.end:
	pop	rdi
	ret

section .data
	buffsize	db 1				; declare a byte 1
	buff_size equ $ - buffsize		; "buff_size" become current adress minus buffsize

