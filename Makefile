# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 20:49:05 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 22:09:25 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ft_isascii.s \
	  ft_isalpha.s \
	  ft_isalnum.s \
	  ft_isprint.s \
	  ft_isdigit.s \
	  ft_bzero.s

CC = ~/.brew/Cellar/nasm/2.11.08/bin/nasm

FLAG = -f macho64 -g

OBJ_DIR = objs

#LINK = -macosx_version_min 10.8 -lSystem #

RM = /bin/rm -f

S = $(addprefix , $(SRC:.s=.s~))

OBJ = $(addprefix $(OBJ_DIR)/, $(notdir $(SRC:.s=.o)))

all : $(NAME)

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_DIR)/%.o:%.s
	$(CC) $(FLAG) $< -o $@

clean :
	$(RM) $(OBJ)
	$(RM) $(S)
	$(RM) Makefile~

fclean : clean
	$(RM) $(NAME)

re : fclean all

$(OBJ): | $(OBJ_DIR)

$(OBJ_DIR):
	mkdir $(OBJ_DIR)

.PHONY: all clean fclean re

.SILENT: fclean

