# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: niperez <niperez@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/28 14:35:55 by niperez           #+#    #+#              #
#    Updated: 2024/06/10 13:00:10 by niperez          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#######################################################
## ARGUMENTS

NAME		= libftprintf.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror

AR			= ar rc
RM			= rm -f

#######################################################
## SRCS & OBJS

FILES	= \
		ft_printf \
		ft_print_utils \

SRCS	= $(addsuffix .c, $(FILES))
OBJS	= $(addsuffix .o, $(FILES))

#######################################################
## RULES

all : ${NAME}

${NAME} : ${OBJS}
		${AR} ${NAME} $?

%.o : %.c
		${CC} ${CFLAGS} -c $< -o $@

clean :
		$(RM) ${OBJS}

fclean : clean
		$(RM) ${NAME}

re : fclean all

.PHONY: all clean fclean re
