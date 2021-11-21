# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rnaamaou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/05 17:34:09 by rnaamaou          #+#    #+#              #
#    Updated: 2021/11/16 16:59:03 by rnaamaou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libft.a
CC = gcc 
HEADER = libft.h
c_flags =  -Wall -Werror -Wextra -I 

sources = ft_memset.c  ft_atoi.c ft_strncmp.c ft_bzero.c  ft_strnstr.c ft_calloc.c \
            ft_strrchr.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_strchr.c \
            ft_isdigit.c ft_strdup.c ft_tolower.c ft_isprint.c ft_memchr.c ft_toupper.c ft_memcmp.c \
            ft_strlcat.c ft_memcpy.c ft_strlcpy.c ft_memmove.c ft_strlen.c \
            ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
            ft_substr.c ft_strjoin.c ft_itoa.c ft_strtrim.c ft_split.c ft_striteri.c ft_strmapi.c 

sources_bonus = ft_lstclear.c ft_lstdelone.c ft_lstiter.c \
                ft_lstlast.c ft_lstmap.c ft_lstnew.c \
                ft_lstsize.c ft_lstadd_back.c ft_lstadd_front.c

objets = $(sources:.c=.o) 
objets_bonus = $(sources_bonus:.c=.o)

all :	$(NAME)

$(NAME) : $(objets)
	ar rcs $(NAME) $(objets)

bonus : $(objets_bonus)
	ar rcs $(NAME) $(objets_bonus)
%.o : %.c $(HEADER)
	$(CC) $(c_flags) $(HEADER) $< -c -o $@

clean : 
	rm -f $(objets)
	rm -f $(objets_bonus)
fclean : clean
	rm -f $(NAME)

re : clean fclean all
