# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 05:48:58 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 06:01:36 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memcpy

	;void *ft_memcpy(void *dst, void *src, size_t n);
	;					rdi			  rsi		rdx

_ft_memcpy:
	mov r9, rdi
	mov rcx, rdx
	cld
	rep movsb
	mov rax, r9
	ret
