# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 21:12:01 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 06:20:58 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 1
	je is
	call _ft_isdigit
	cmp rax, 1
	je is
	jmp isnot

is:
	mov rax, 1
	ret

isnot:
	mov rax, 0
	ret
