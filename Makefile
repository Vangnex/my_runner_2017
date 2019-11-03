##
## EPITECH PROJECT, 2018
## Makefile bistro-matic
## File description:
## makefile + makefile lib
##

SRC	=	src/my_runner.c					\
		src/start_my_runner.c			\
		src/get_map_my_runner.c			\
		src/data_init_my_runner.c		\
		src/data_bg_my_runner.c			\
		src/data_chara_my_runner.c		\
		src/data_obst_my_runner.c		\
		src/data_interface_my_runner.c	\
		src/score_my_runner.c			\
		src/window_my_runner.c			\
		src/title_loop_my_runner.c		\
		src/title_cursor_my_runner.c	\
		src/select_loop_my_runner.c		\
		src/select_cursor_my_runner.c	\
		src/set_chara_my_runner.c		\
		src/set_obst_my_runner.c		\
		src/gameloop_my_runner.c		\
		src/parallax_my_runner.c		\
		src/obstacle_my_runner.c		\
		src/obstacle_rand_my_runner.c	\
		src/interface_my_runner.c		\
		src/enemy_my_runner.c			\
		src/enemy_anim_my_runner.c		\
		src/enemy_mov_my_runner.c		\
		src/music_my_runner.c			\
		src/event_my_runner.c			\
		src/move_my_runner.c			\
		src/jump_mov_my_runner.c		\
		src/jump_voice_my_runner.c		\
		src/jump_richter_my_runner.c	\
		src/jump_maria_my_runner.c		\
		src/jump_maria2_my_runner.c		\
		src/fall_my_runner.c			\
		src/chara_sprite_my_runner.c	\
		src/chara_anim_my_runner.c		\
		src/run_anim_my_runner.c		\
		src/hit_1_my_runner.c			\
		src/hit_2_my_runner.c			\
		src/hit_voice_my_runner.c		\
		src/pause_my_runner.c			\
		src/pause_sprite_my_runner.c	\
		src/pause_cursor_my_runner.c	\
		src/pause_option_my_runner.c	\
		src/free_my_runner.c			\
		src/free_2_my_runner.c

NAME	=	my_runner

LIBS	=	-L./lib/ -lmy

all	:	$(NAME)

$(NAME)	:
		make -C ./lib/my/
		gcc -Wall -Wextra $(SRC) -o $(NAME) $(LIBS) -I./include -lc_graph_prog

clean	:
		make clean -C ./lib/my/

fclean	:	clean
		rm -f $(NAME)
		make fclean -C ./lib/my/

re	:	fclean all

.PHONY	:	all clean fclean re
