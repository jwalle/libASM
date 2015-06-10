# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strclr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/10 16:51:13 by jwalle            #+#    #+#              #
#    Updated: 2015/06/10 17:00:44 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strclr
	extern _ft_strlen
	extern _ft_bzero

_ft_strclr:
	cmp rdi, 0
	je .end
	push rdi
	call _ft_strlen
	pop rdi
	mov rsi, rax
	call _ft_bzero
	ret

.end:
	mov rax, 0
	ret
