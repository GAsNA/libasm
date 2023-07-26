NAME = libasm.a

SRC_PATH = ./src/
OBJ_PATH = ./obj/

FILES = _hw.s		\
		ft_strlen.s	\
		ft_strcpy.s	\
		ft_strcmp.s	\
		ft_write.s	\
		ft_read.s	\
		ft_strdup.s

SRC = $(addprefix $(SRC_PATH), $(FILES))
OBJ = $(addprefix $(OBJ_PATH), $(FILES:.s=.o))

NASMFLAGS = -f elf64
NASM = nasm $(NASMFLAGS)

all: $(NAME)

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_PATH)%.o:	$(SRC_PATH)%.s
	mkdir -p $(dir $@)
	$(NASM) -o $@ $<

clean:
	rm -rf $(OBJ_PATH) a.out

fclean: clean
	rm -f $(NAME)

re: fclean all

run: all
	clang main.c libasm.a && ./a.out < test_file.txt

debug: all
	clang -g main.c libasm.a && lldb ./a.out

.PHONY: all, clean, fclean, re
