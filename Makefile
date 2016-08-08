CC=		clang
FLAGS=	-Wall -Wextra -Werror
NAME=	Colleen

SRC= Colleen.c

OBJ= $(SRC:.c=.o)

.PHONY: clean fclean re
.SILENT:

all:$(NAME)

$(NAME): $(OBJ)
		$(CC) -o $(NAME) $(OBJ)
		echo "\t\xF0\x9F\x8F\x81   Compiling \033[35m$(NAME) \033[0mDONE!"

%.o: %.cpp
		echo "\t\xF0\x9F\x94\xA7   Building \033[34m $@ \033[0m"
		$(CC) -c $(FLAGS) -o $@ $<

clean:
		echo "\t\xF0\x9F\x92\xA3   Cleaning"
		rm -rf $(OBJ)

fclean: clean
		echo "\t\xF0\x9F\x9A\xBD   Full Clean"
		rm -rf $(NAME)

re: fclean all
