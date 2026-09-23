NAME = libasm.a
EXEC = prog_asm

LD= ld
LDFLAGS =

ASM = nasm
ASFLAGS = -f elf64

AR = ar crs

MAIN = main.s
MAIN_OBJ = $(MAIN:.s=.o)

SRCS = ft_strlen.s
OBJS = $(SRCS:.s=.o)

RM = rm -f


all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $@ $(OBJS)

$(MAIN_OBJ): $(MAIN)
	@$(ASM) $(ASFLAGS) $< -o $@

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
	$(LD) $(LDFLAGS) $(MAIN_OBJ) -L. -lasm -o $(EXEC)
	@echo $(EXEC)" compiled!\n"
	@echo "Running " $(EXEC) "!\n\n"
	./$(EXEC)

.PHONY: all clean fclean re run

