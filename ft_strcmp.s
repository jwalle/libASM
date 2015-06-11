# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/11 21:58:40 by jwalle            #+#    #+#              #
#    Updated: 2015/06/11 22:32:07 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				;int strcmp(const char *s1, const char *s2)
				;				rdi					rsi

section .text
	global _ft_strcmp

_ft_strcmp:
	xor r8, r8
	xor rcx, rcx
	xor rdx, rdx

loop_1:
	cmp [rdi + r8], byte 0
	je zero
	mov rcx, [rdi + r8]
	mov rdx, [rsi + r8]
	cmp rcx, rdx
	jl less
	jg greater
	inc r8
	jmp loop_1

zero:
	cmp [rsi + r8], byte 0
	je equal
	jmp less

less:
	sub rcx, rdx
	mov rax, rcx
	ret

greater:
	sub rdx, rcx
	mov rax, rdx
	ret

equal:
	mov rax, 0
	ret
