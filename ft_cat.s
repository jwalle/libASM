# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 06:15:35 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 06:40:15 by jwalle           ###   ########.fr        #
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
	mov rax, MACH_SYSCALL(READ)
	push rdi
	lea rsi, [rel buffsize]
	mov rdx, buff_size
	syscall
	jc	.end
	cmp rax, 0
	je .end
	mov rax, MACH_SYSCALL(WRITE)
	mov	rdi, STDOUT
	mov rdx, buff_size
	syscall
	pop rdi
	jmp .loop

.end:
	pop	rdi
	ret

section .data
	buffsize	db 1
	buff_size equ $ - buffsize

