# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 23:55:35 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 00:21:29 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper

_ft_toupper:
	cmp rdi, 97
	jb fail
	cmp rdi, 122
	ja fail
	mov rax, rdi
	sub rax, 32
	ret 

fail:
	mov rax, rdi
	ret
