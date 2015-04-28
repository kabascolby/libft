# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apachkof <apachkof@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/28 17:33:23 by apachkof          #+#    #+#              #
#    Updated: 2015/04/28 23:22:32 by apachkof         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MAKE = make
CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -O3
CPPFLAGS = -Iincludes/

NAME = libft.a

BIN_DIR = .

SRC_FILES =	ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memccpy.c \
			ft_memmove.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strlen.c \
			ft_strdup.c \
			ft_strcpy.c \
			ft_strncpy.c \
			ft_strcat.c \
			ft_strncat.c \
			ft_strlcat.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strstr.c \
			ft_strnstr.c \
			ft_strcmp.c \
			ft_strncmp.c \
			ft_atoi.c \
			ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_toupper.c \
			ft_tolower.c \
			\
			ft_memalloc.c \
			ft_memdel.c \
			ft_strnew.c \
			ft_strdel.c \
			ft_strclr.c \
			ft_striter.c \
			ft_striteri.c \
			ft_strmap.c \
			ft_strmapi.c \
			ft_strequ.c \
			ft_strnequ.c \
			ft_strsub.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_strsplit.c \
			ft_itoa.c \
			ft_putchar.c \
			ft_putstr.c \
			ft_putendl.c \
			ft_putnbr.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			\
			ft_lstnew.c \
			ft_lstdelone.c \
			ft_lstdel.c \
			ft_lstadd.c \
			ft_lstiter.c \
			ft_lstmap.c \
			\
			ft_lst2add.c \
			ft_lst2del.c \
			ft_lst2delone.c \
			ft_lst2iter.c \
			ft_lst2map.c \
			ft_lst2new.c

SRC_DIR = .

SRC = $(addprefix $(SRC_DIR)/,$(SRC_FILES))

OBJ_DIR = obj
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

STEAM = \033[1;30m
COFFEE = \033[1;31m
NC = \033[0m

$(NAME): $(BIN_DIR) $(OBJ_DIR) $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

all: $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

.SUFFIXES:

coffee:
	@echo "        $(STEAM)..\"$(NC)"
	@echo "      $(STEAM)..$(NC)  $(STEAM)..\"$(NC)"
	@echo "            $(STEAM)..\"$(NC)"
	@echo "             $(STEAM)..\"$(NC)"
	@echo "            $(STEAM)..\"$(NC)"
	@echo "           $(STEAM)..\"$(NC)"
	@echo "         $(STEAM)..\"$(NC)"
	@echo "##      $(STEAM)..$(NC)     ####"
	@echo "##$(COFFEE).............$(NC)##  ##"
	@echo "##$(COFFEE).............$(NC)##   ##"
	@echo "##$(COFFEE).............$(NC)## ##"
	@echo "##$(COFFEE).............$(NC)###"
	@echo " ##$(COFFEE)...........$(NC)##"
	@echo "¸ ############# ˛"
	@echo "#################"

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

depend:
	@sed '/#\{35\} Generated #\{34\}/q' Makefile > Makefile.new
	@mv Makefile.new Makefile
	@$(foreach source, $(SRC), echo '' >> 'Makefile'; \
		gcc -MM $(source) $(CPPFLAGS) \
		| sed 's/\(^.*\.o\):/$(OBJ_DIR)\/\1:/' >> 'Makefile'; \
		echo '\t$$(CC)' -c $(source) '$$(CFLAGS) $$(CPPFLAGS) \
		-o $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(source))' >> 'Makefile';)

################################### Generated ##################################

obj/ft_memset.o: ft_memset.c
	$(CC) -c ./ft_memset.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memset.o

obj/ft_bzero.o: ft_bzero.c includes/libft.h
	$(CC) -c ./ft_bzero.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_bzero.o

obj/ft_memcpy.o: ft_memcpy.c
	$(CC) -c ./ft_memcpy.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memcpy.o

obj/ft_memccpy.o: ft_memccpy.c
	$(CC) -c ./ft_memccpy.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memccpy.o

obj/ft_memmove.o: ft_memmove.c includes/libft.h
	$(CC) -c ./ft_memmove.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memmove.o

obj/ft_memchr.o: ft_memchr.c
	$(CC) -c ./ft_memchr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memchr.o

obj/ft_memcmp.o: ft_memcmp.c
	$(CC) -c ./ft_memcmp.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memcmp.o

obj/ft_strlen.o: ft_strlen.c
	$(CC) -c ./ft_strlen.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strlen.o

obj/ft_strdup.o: ft_strdup.c includes/libft.h
	$(CC) -c ./ft_strdup.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strdup.o

obj/ft_strcpy.o: ft_strcpy.c
	$(CC) -c ./ft_strcpy.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strcpy.o

obj/ft_strncpy.o: ft_strncpy.c
	$(CC) -c ./ft_strncpy.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strncpy.o

obj/ft_strcat.o: ft_strcat.c
	$(CC) -c ./ft_strcat.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strcat.o

obj/ft_strncat.o: ft_strncat.c
	$(CC) -c ./ft_strncat.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strncat.o

obj/ft_strlcat.o: ft_strlcat.c includes/libft.h
	$(CC) -c ./ft_strlcat.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strlcat.o

obj/ft_strchr.o: ft_strchr.c
	$(CC) -c ./ft_strchr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strchr.o

obj/ft_strrchr.o: ft_strrchr.c includes/libft.h
	$(CC) -c ./ft_strrchr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strrchr.o

obj/ft_strstr.o: ft_strstr.c includes/libft.h
	$(CC) -c ./ft_strstr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strstr.o

obj/ft_strnstr.o: ft_strnstr.c includes/libft.h
	$(CC) -c ./ft_strnstr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strnstr.o

obj/ft_strcmp.o: ft_strcmp.c includes/libft.h
	$(CC) -c ./ft_strcmp.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strcmp.o

obj/ft_strncmp.o: ft_strncmp.c includes/libft.h
	$(CC) -c ./ft_strncmp.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strncmp.o

obj/ft_atoi.o: ft_atoi.c includes/libft.h
	$(CC) -c ./ft_atoi.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_atoi.o

obj/ft_isalpha.o: ft_isalpha.c
	$(CC) -c ./ft_isalpha.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_isalpha.o

obj/ft_isdigit.o: ft_isdigit.c
	$(CC) -c ./ft_isdigit.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_isdigit.o

obj/ft_isalnum.o: ft_isalnum.c
	$(CC) -c ./ft_isalnum.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_isalnum.o

obj/ft_isascii.o: ft_isascii.c
	$(CC) -c ./ft_isascii.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_isascii.o

obj/ft_isprint.o: ft_isprint.c
	$(CC) -c ./ft_isprint.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_isprint.o

obj/ft_toupper.o: ft_toupper.c
	$(CC) -c ./ft_toupper.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_toupper.o

obj/ft_tolower.o: ft_tolower.c
	$(CC) -c ./ft_tolower.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_tolower.o

obj/ft_memalloc.o: ft_memalloc.c
	$(CC) -c ./ft_memalloc.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memalloc.o

obj/ft_memdel.o: ft_memdel.c
	$(CC) -c ./ft_memdel.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_memdel.o

obj/ft_strnew.o: ft_strnew.c includes/libft.h
	$(CC) -c ./ft_strnew.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strnew.o

obj/ft_strdel.o: ft_strdel.c includes/libft.h
	$(CC) -c ./ft_strdel.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strdel.o

obj/ft_strclr.o: ft_strclr.c
	$(CC) -c ./ft_strclr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strclr.o

obj/ft_striter.o: ft_striter.c
	$(CC) -c ./ft_striter.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_striter.o

obj/ft_striteri.o: ft_striteri.c
	$(CC) -c ./ft_striteri.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_striteri.o

obj/ft_strmap.o: ft_strmap.c includes/libft.h
	$(CC) -c ./ft_strmap.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strmap.o

obj/ft_strmapi.o: ft_strmapi.c includes/libft.h
	$(CC) -c ./ft_strmapi.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strmapi.o

obj/ft_strequ.o: ft_strequ.c includes/libft.h
	$(CC) -c ./ft_strequ.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strequ.o

obj/ft_strnequ.o: ft_strnequ.c includes/libft.h
	$(CC) -c ./ft_strnequ.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strnequ.o

obj/ft_strsub.o: ft_strsub.c includes/libft.h
	$(CC) -c ./ft_strsub.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strsub.o

obj/ft_strjoin.o: ft_strjoin.c includes/libft.h
	$(CC) -c ./ft_strjoin.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strjoin.o

obj/ft_strtrim.o: ft_strtrim.c includes/libft.h
	$(CC) -c ./ft_strtrim.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strtrim.o

obj/ft_strsplit.o: ft_strsplit.c includes/libft.h
	$(CC) -c ./ft_strsplit.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_strsplit.o

obj/ft_itoa.o: ft_itoa.c
	$(CC) -c ./ft_itoa.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_itoa.o

obj/ft_putchar.o: ft_putchar.c includes/libft.h
	$(CC) -c ./ft_putchar.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putchar.o

obj/ft_putstr.o: ft_putstr.c includes/libft.h
	$(CC) -c ./ft_putstr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putstr.o

obj/ft_putendl.o: ft_putendl.c includes/libft.h
	$(CC) -c ./ft_putendl.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putendl.o

obj/ft_putnbr.o: ft_putnbr.c includes/libft.h
	$(CC) -c ./ft_putnbr.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putnbr.o

obj/ft_putchar_fd.o: ft_putchar_fd.c includes/libft.h
	$(CC) -c ./ft_putchar_fd.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putchar_fd.o

obj/ft_putstr_fd.o: ft_putstr_fd.c includes/libft.h
	$(CC) -c ./ft_putstr_fd.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putstr_fd.o

obj/ft_putendl_fd.o: ft_putendl_fd.c includes/libft.h
	$(CC) -c ./ft_putendl_fd.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putendl_fd.o

obj/ft_putnbr_fd.o: ft_putnbr_fd.c includes/libft.h
	$(CC) -c ./ft_putnbr_fd.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_putnbr_fd.o

obj/ft_lstnew.o: ft_lstnew.c includes/libft.h
	$(CC) -c ./ft_lstnew.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lstnew.o

obj/ft_lstdelone.o: ft_lstdelone.c includes/libft.h
	$(CC) -c ./ft_lstdelone.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lstdelone.o

obj/ft_lstdel.o: ft_lstdel.c includes/libft.h
	$(CC) -c ./ft_lstdel.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lstdel.o

obj/ft_lstadd.o: ft_lstadd.c includes/libft.h
	$(CC) -c ./ft_lstadd.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lstadd.o

obj/ft_lstiter.o: ft_lstiter.c includes/libft.h
	$(CC) -c ./ft_lstiter.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lstiter.o

obj/ft_lstmap.o: ft_lstmap.c includes/libft.h
	$(CC) -c ./ft_lstmap.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lstmap.o

obj/ft_lst2add.o: ft_lst2add.c includes/libft.h
	$(CC) -c ./ft_lst2add.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lst2add.o

obj/ft_lst2del.o: ft_lst2del.c includes/libft.h
	$(CC) -c ./ft_lst2del.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lst2del.o

obj/ft_lst2delone.o: ft_lst2delone.c includes/libft.h
	$(CC) -c ./ft_lst2delone.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lst2delone.o

obj/ft_lst2iter.o: ft_lst2iter.c includes/libft.h
	$(CC) -c ./ft_lst2iter.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lst2iter.o

obj/ft_lst2map.o: ft_lst2map.c includes/libft.h
	$(CC) -c ./ft_lst2map.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lst2map.o

obj/ft_lst2new.o: ft_lst2new.c includes/libft.h
	$(CC) -c ./ft_lst2new.c $(CFLAGS) $(CPPFLAGS) -o  obj/ft_lst2new.o
