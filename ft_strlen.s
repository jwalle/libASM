# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/03 00:24:30 by jwalle            #+#    #+#              #
#    Updated: 2015/06/10 18:41:57 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	;mov S, D 	move Source -> destination
	;push S		push Source on stack
	;pop D		pop top of stack on Destination
	;sub S, D	sub Source from Dest

section .text
	global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	je end
	push rbx		;rbx on stack
	push rcx		;rcx on stack
	mov rbx, rdi	;place str on rbx
	xor al, al		;set register acumulator () to 0
	mov rcx, -1		;
	repnz scasb		; repeat until \0, 
	sub rdi, rbx	
	mov rax, rdi
	sub rax, 1
	pop rcx
	pop rbx
	ret

end:
	ret
