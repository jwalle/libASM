NAME = test

SRC = plop.s \

OBJ = $(SRC:.s=.o)

CC = ~/.brew/Cellar/nasm/2.11.08/bin/nasm

FLAG = -f macho64

LINK = -macosx_version_min 10.8 -lSystem

RM = /bin/rm -f

all : $(NAME)

$(NAME) :
	$(CC) $(FLAG) $(SRC) -o $(OBJ)
	ld $(OBJ) $(LINK) -o $(NAME)

clean :
	$(RM) $(OBJ)

fclean : clean
	$(RM) $(NAME)

re : fclean all
