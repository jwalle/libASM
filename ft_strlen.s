# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 00:24:30 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 01:39:10 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	je end
	push rbx
	push rcx
	mov rbx, rdi
	xor al, al
	mov rcx, -1 
	repnz scasb
	sub rdi, rbx
	mov rax, rdi
	sub rax, 1
	pop rcx
	pop rbx
	ret

end:
	ret
