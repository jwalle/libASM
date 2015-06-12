# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 08:08:49 by jwalle            #+#    #+#              #
#    Updated: 2015/06/12 16:09:37 by jwalle           ###   ########.fr        #
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
	push rdi
	mov rsi, rsp					;rsp -> stack pointer
	mov rdx, 1
	mov rax, MACH_SYSCALL(WRITE)
	mov rdi, STDOUT
	syscall
	pop rdi
	ret

.null:
	ret
