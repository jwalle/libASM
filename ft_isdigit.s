# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 21:05:53 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 21:08:27 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl isnot
	cmp rdi, 57
	jg isnot
	jmp is
 
is:
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret

