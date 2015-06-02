# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 19:47:14 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 22:50:34 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


; void	*ft_bzero(void *s, size_t n)

section .text
	global _ft_bzero		; pas oublier le premier '_'

_ft_bzero:
	cmp rsi, 0					; rsi c est le premier arg, on compare a 0;
	jz end						; si c'est 0, on appelle end qui exit la fonction
	dec rsi						; on decremente rsi
	mov [rdi + rsi], byte 0		; ont met a 0 le bit pointe sur rdi par rsi a 0
	jmp _ft_bzero				; on rapelle la fonction. ca sert de while

end :
	ret
