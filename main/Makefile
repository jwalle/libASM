# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jwalle <jwalle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/06/02 21:45:17 by jwalle            #+#    #+#              #
#    Updated: 2015/06/02 23:51:01 by jwalle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = main_test

SRC = main.c

OBJ = main.o

INC = -I ./ -I ./libft
LINK = -L ./libft -lft

VERS = -macosx_version_min 10.8 -lSystem

FLAG = -Wall -Werror -Wextra

CC = /usr/bin/gcc

RM = /bin/rm -f

all : $(NAME)

$(NAME) : $(OBJ)
	#make -C ../
	#cp -f ../libfts.a .
	#$(CC) -o $(NAME) main.c $(LINK) $(INC)
	#gcc -o $(NAME) $(SRC) $(LINK)
	make -C libft
	$(CC) $(SRC) $(LINK) $(INC) -o $(NAME)

clean :
	$(RM) $(OBJ)

fclean : clean
	$(RM) libfts.a
	$(RM) $(NAME)

re : fclean all

.PHONY: re all clean fclean
