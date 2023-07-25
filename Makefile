NAME = libasm.a

SRC_PATH = ./src/
OBJ_PATH = ./obj/

FILES = _hw.s	\
		ft_strlen.s

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
	rm -rf $(OBJ_PATH)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all, clean, fclean, re
