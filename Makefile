# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jaleman <jaleman@student.42.us.org>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/02/21 04:19:55 by jaleman           #+#    #+#              #
#    Updated: 2017/02/21 04:19:56 by jaleman          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Name of the library
NAME = libftprintf.a

# Folders of the source files (*.c)
SRC_DIR = src/
LIB_DIR = libft/

# Source files
SRC_FILES = ft_printf_attr.c ft_printf_bin.c ft_printf_hex.c ft_printf_nbr.c \
			ft_printf_oct.c ft_printf_signed.c ft_printf_spec.c \
			ft_printf_text.c ft_printf_unsigned.c ft_printf.c
LIBFT_FILES = ft_atoi.c ft_bzero.c ft_isdigit.c ft_memalloc.c ft_putchar.c \
			  ft_putnchar.c ft_putstr.c ft_putunbr.c ft_putwchar.c \
			  ft_putwstr.c ft_strdup.c ft_strlen.c ft_strncpy.c ft_strrev.c \
			  ft_strsub.c ft_strtolower.c ft_wclen.c ft_wcscpy.c ft_wcsdup.c \
			  ft_wcslen.c ft_wcsncpy.c ft_wcsnew.c

# Source files path
SRC = $(addprefix $(SRC_DIR), $(SRC_FILES))
LIBFT = $(addprefix $(LIB_DIR), $(LIBFT_FILES))

# Objects
OBJ = $(SRC_FILES:.c=.o) $(LIBFT_FILES:.c=.o)

# Flags
INC = -Iincludes/
FLAGS = -Wall -Wextra -Werror

# all rule
all: $(NAME)

# Compiling command
$(NAME):
	@echo "(ﾉ◕ヮ◕)ﾉ*:・ﾟ✧ Compiling... Wait a sec."
	@gcc -c $(FLAGS) $(SRC) $(LIBFT) $(INC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "(•̀ᴗ•́)و $(NAME) generated!".

# clean rule
clean:
	@/bin/rm -f $(OBJ)

# fclean rule
fclean: clean
	@/bin/rm -f $(NAME)

# re rule
re: fclean all

# phony
.PHONY: all clean fclean re
