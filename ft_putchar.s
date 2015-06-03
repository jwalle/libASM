# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 08:08:49 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 08:30:04 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4


section	.text
	global _ft_putchar


_ft_putchar:
	cmp rdi, 0
	je .null
	mov rcx, rdi
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	mov rdi, STDOUT
	lea rsi, [rcx]
	syscall
	ret

.null:
	ret
