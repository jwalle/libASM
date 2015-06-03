# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strnew.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 07:35:12 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 08:03:33 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strnew
	extern _malloc
	extern _ft_bzero

_ft_strnew:
	xor r9, r9
	mov rdi, r9
	inc r9
	mov r9, rdi
	push rdi
	call _malloc
	cmp rax, 0
	je end
	mov rdi, rax
	pop rdx
	jmp .loop

.loop:
	cmp r9, 0
	jz end
	dec r9
	mov [rax + r9], byte 0
	jmp .loop

end:
	ret
