# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 00:07:58 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 00:21:06 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 65
	jb fail
	cmp rdi, 90
	ja fail
	mov rax, rdi
	add rax, 32
	ret 

fail:
	mov rax, rdi
	ret
