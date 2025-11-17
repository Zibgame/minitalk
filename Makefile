# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/11/17 10:51:11 by zcadinot          #+#    #+#              #
#    Updated: 2025/11/17 11:19:06 by zcadinot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                   CONFIG                                     #
# **************************************************************************** #

NAME_SERVER = server
NAME_CLIENT = client

CC      = cc
CFLAGS  = -Wall -Wextra -Werror -I include -I library/libft

LIBFT_DIR = library/libft
LIBFT     = $(LIBFT_DIR)/libft.a

SRC_DIR = src
OBJ_DIR = obj

SRCS_SERVER = server.c utils.c
SRCS_CLIENT = client.c utils.c

OBJS_SERVER = $(addprefix $(OBJ_DIR)/,$(SRCS_SERVER:.c=.o))
OBJS_CLIENT = $(addprefix $(OBJ_DIR)/,$(SRCS_CLIENT:.c=.o))

# **************************************************************************** #
#                                   RULES                                      #
# **************************************************************************** #

all: $(NAME_SERVER) $(NAME_CLIENT)

$(NAME_SERVER): $(LIBFT) $(OBJS_SERVER)
	$(CC) $(CFLAGS) $(OBJS_SERVER) $(LIBFT) -o $(NAME_SERVER)

$(NAME_CLIENT): $(LIBFT) $(OBJS_CLIENT)
	$(CC) $(CFLAGS) $(OBJS_CLIENT) $(LIBFT) -o $(NAME_CLIENT)

# Compilation des .c en .o
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Création du dossier obj
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# **************************************************************************** #
#                                 LIBFT                                        #
# **************************************************************************** #

$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

# **************************************************************************** #
#                                 CLEAN                                        #
# **************************************************************************** #

clean:
	rm -rf $(OBJ_DIR)
	$(MAKE) -C $(LIBFT_DIR) clean

fclean: clean
	rm -f $(NAME_SERVER) $(NAME_CLIENT)
	$(MAKE) -C $(LIBFT_DIR) fclean

re: fclean all

.PHONY: all clean fclean re
#
