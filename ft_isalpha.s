# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 19:52:55 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 20:53:24 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	;int	ft_isalpha(int n)

global _ft_isalpha

_ft_isalpha:
	cmp rdi, 65
	jl isnot
	cmp rdi, 122
	jg isnot
	cmp rdi, 91
	jl is
	cmp rdi, 96
	jg is
	jmp isnot

is:
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret

