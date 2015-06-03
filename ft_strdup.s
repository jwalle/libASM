# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 05:58:16 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 06:09:40 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	mov rbx, rdi ; stock str dans rbx
	call _ft_strlen
	mov rdi, rax
	inc rdi		;+1 pour le \0
	push rdi
	call _malloc
	cmp rax, 0
	je end		; verifie si malloc a bien fonctionne
	mov rdi, rax ; resultat du malloc = dest
	mov rsi, rbx ; la str stocker = src
	pop rdx		; la size recuperer apres le push sur la stacj
	call _ft_memcpy

end:
	ret
