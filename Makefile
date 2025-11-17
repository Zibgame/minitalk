# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/11/17 10:51:11 by zcadinot          #+#    #+#              #
#    Updated: 2025/11/17 10:56:38 by zcadinot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_SERVER = server
NAME_CLIENT = client

CC = gcc
CFLAGS = -Wall -Wextra -Werror -I include

SRCS_SERVER = src/server.c
SRCS_CLIENT = src/client.c

OBJS_SERVER = $(SRCS_SERVER:.c=.o)
OBJS_CLIENT = $(SRCS_CLIENT:.c=.o)

LIBFT = libft/libft.a

all: $(NAME_SERVER) $(NAME_CLIENT)

$(NAME_SERVER): $(OBJS_SERVER)
	$(CC) $(CFLAGS) -o $(NAME_SERVER) $(OBJS_SERVER) $(LIBFT)

$(NAME_CLIENT): $(OBJS_CLIENTr
	$(CC) $(CFLAGS) -o $(NAME_CLIENT) $(OBJS_CLIENT) $(LIBFT)

clean:
	rm -f $(OBJS_SERVER) $(OBJS_CLIENT)

fclean: clean
	rm -f $(NAME_SERVER) $(NAME_CLIENT)

rer fclean all
