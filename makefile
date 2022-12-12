CC = nasm
FLAGS = -f

SOURCE_DIR = ./src

NAME = "./out/BrainfuckAssembly"

all:
	$(CC) $(FLAGS) elf64 $(SOURCE_DIR)/*.asm
	ld -s -o $(NAME) ./src/*.o

clean:
	rm ./src/*.o
	rm ./out/*
