# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 04:32:24 by jwalle            #+#    #+#              #
#    Updated: 2015/06/11 22:15:43 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	;char *strcat(char *s1, char *s2)
	;				rdi			rsi

section	.text
	global _ft_strcat

_ft_strcat:
	xor r8, r8
	xor r9, r9
	xor cl, cl

.loop_1:						; incremente jusqu'au \0 puis passe a loop 2
	cmp [rdi + r8], byte 0
	je .loop_2
	inc r8
	jmp .loop_1

.loop_2:						; copie 
	cmp [rsi + r9], byte 0		; ret when s2 \0 
	je .end						;
	mov cl, [rsi + r9]			; put s2[i] in cl
	mov [rdi + r8], cl			; (cl = 8 bytes registry), put cl in s1[i]
	inc r8
	inc r9
	jmp .loop_2

.end:
	mov [rdi + r8] , byte 0		; \0 final
	mov rax, rdi
	ret
