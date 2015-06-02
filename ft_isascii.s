# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 21:16:56 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 21:18:14 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isascii

ft_isascii:
	cmp rdi, 0
	jl isnot
	cmp rdi, 127
	jg isnot
	jmp is

is:
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret

