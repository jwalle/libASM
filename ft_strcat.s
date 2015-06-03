# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 04:32:24 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 05:16:11 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global _ft_strcat

_ft_strcat:
	xor r8, r8
	xor r9, r9

.loop_1:
	cmp [rdi + r8], byte 0
	je .loop_2
	inc r8
	jmp .loop_1

.loop_2:
	cmp [rsi + r9], byte 0
	je .end
	mov cl, [rsi + r9]
	mov [rdi + r8], cl
	inc r8
	inc r9
	jmp .loop_2

.end:
	mov [rdi + r8] , byte 0
	mov rax, rdi
	ret
