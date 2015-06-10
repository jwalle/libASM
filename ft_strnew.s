# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strnew.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 07:35:12 by jwalle            #+#    #+#              #
#    Updated: 2015/06/10 16:15:07 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strnew
	extern _malloc
	extern _ft_bzero

_ft_strnew:
	mov r9, rdi
	inc r9
	push r9 
	call _malloc
	cmp rax, 0
	je end
	mov rdi, rax
	pop r9
	jmp .loop

.loop:
	cmp r9, 0
	jz end
	dec r9
	mov [rax + r9], byte 0
	jmp .loop

end:
	ret
