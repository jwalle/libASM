# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 21:09:01 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 21:10:34 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jl isnot
	cmp rdi, 126
	jg isnot
	jmp is

is:
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret

