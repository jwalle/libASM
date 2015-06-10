# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/10 15:39:13 by jwalle            #+#    #+#              #
#    Updated: 2015/06/10 15:49:40 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4


section	.text
	global _ft_putstr
	extern _ft_strlen

_ft_putstr:
	cmp rdi, 0
	je .null
	mov rcx, rdi					;stock la string dans rcx
	call _ft_strlen
	mov rdx, rax					;stock len dans rdx
	mov rax, MACH_SYSCALL(WRITE)	;
	mov rdi, STDOUT
	lea rsi, [rcx]
	syscall
	ret

.null:
	ret
