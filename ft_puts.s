# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 00:55:54 by jwalle            #+#    #+#              #
#    Updated: 2015/06/10 18:46:56 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4


section	.text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0
	je .null
	mov rcx, rdi					;stock la string dans rcx
	call _ft_strlen
	mov rdx, rax					;stock len dans rdx
	mov rax, MACH_SYSCALL(WRITE) 
	mov rdi, STDOUT
	lea rsi, [rcx]					;lea D, S get a pointer from Source and stores it in Dest
	syscall
	jmp .back_n

.back_n:
	mov rdi, STDOUT
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	lea	rsi, [rel new_line]
	syscall
	mov rax, 1
	ret

.null:
	mov rdi, STDOUT
	mov rdx, 7	; 7 normallement
	mov rax, MACH_SYSCALL(WRITE)
	lea	rsi, [rel line.null]	;null_msg
	syscall
	mov rax, -1
	ret

.new :
	new_line db 10

section .data
line:
	.null db "(null)", 10

