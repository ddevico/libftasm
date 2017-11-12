# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/30 14:18:45 by ddevico           #+#    #+#              #
#    Updated: 2017/11/12 15:02:04 by davydevico       ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
NAME_TEST = test
PATH_SRC = ./src/

AS = nasm
ASFLAGS = -f macho64
CC = cc -Wall -Wextra -Werror

LIBS = -L ./ -lfts

SRC =	ft_toupper.s \
		ft_tolower.s \
		ft_isalpha.s \
		ft_isascii.s \
		ft_isdigit.s \
		ft_isprint.s \
		ft_bzero.s \
		ft_strcat.s \
		ft_isalnum.s \
		ft_puts.s	 \
		ft_strlen.s	 \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s \
		ft_strcpy.s \
		ft_strchr.s \
		ft_isupper.s \
		ft_islower.s \
		ft_putchar.s \
		ft_abs.s \
		ft_swap.s \

OBJ = $(addprefix $(PATH_SRC), $(SRC:.s=.o))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f $(NAME_TEST)

re: fclean all

test: $(OBJ) main.c
	$(CC) main.c $(LIBS) -o $(NAME_TEST)

.PHONY: all clean fclean re test
