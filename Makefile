NAME = libasm.a
EXEC = prog_asm

LD= ld
LDFLAGS =

ASM = nasm
ASFLAGS = -f elf64

AR = ar crs

MAIN = main.c
MAIN_OBJ = $(MAIN:.c=.o)

SRCS_FOLDER = ft_strlen.s \
				ft_strcpy.s \
				ft_strcmp.s \
				ft_write.s \
				ft_read.s \
				ft_strdup.s \

SRCS = $(addprefix srcs/, $(SRCS_FOLDER))
OBJS = $(SRCS:.s=.o)

RM = rm -f


all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $@ $(OBJS)

$(MAIN_OBJ): $(MAIN)
	gcc -Wall -Wextra -Werror -c $< -o $@

%.o: %.s
	@$(ASM) $(ASFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)
	$(RM) $(MAIN_OBJ)

fclean:
	@make clean
	$(RM) $(NAME)
	$(RM) $(EXEC)

re:
	@$(MAKE) fclean
	@$(MAKE) all

run:$(MAIN_OBJ)
	gcc  $(MAIN_OBJ) -L. -lasm -o $(EXEC)
	@echo $(EXEC)" compiled!\n"
	@echo "Running " $(EXEC) "!\n\n"
	./$(EXEC)

.PHONY: all clean fclean re run

