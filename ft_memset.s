# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 05:17:12 by jwalle            #+#    #+#              #
#    Updated: 2015/06/03 06:19:04 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset

	;void *memset(void *b, int c, size_t len);
	;rax			rdi		rsi			rdx				

_ft_memset:
	push rdi		; on push b sur la stack
	mov rax, rsi
	mov rcx, rdx
	cld				;reset flags
	rep stosb		;Store reg rax in byte adress rdi:[rcx], update (rcx)
	pop rax			; on pop b de la stack sur rax
	ret
