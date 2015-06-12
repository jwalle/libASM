# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/11 21:58:40 by jwalle            #+#    #+#              #
#    Updated: 2015/06/12 14:37:28 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				;int strcmp(const char *s1, const char *s2)
				;				rdi					rsi

section .text
	global _ft_strcmp

_ft_strcmp:
	xor r8, r8


loop_1:
	cmp [rdi + r8], byte 0
	je zero
	mov rcx, [rdi + r8]
	mov rdx, [rsi + r8]
	and	rcx, 0xFF
	and rdx, 0xFF
	inc r8
	cmp rcx, rdx
	jne dif
	jmp loop_1

zero:
	cmp [rsi + r8], byte 0
	je equal
	jmp dif


dif:
	sub rcx, rdx
	mov rax, rcx
	ret


equal:
	mov rax, 0
	ret
	