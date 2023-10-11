SRC = prog
BIN = out

.PHONY: run compile clean

run: compile
	@./$(BIN)

compile:
	@as --32 -o $(SRC).o $(SRC).asm && ld -m elf_i386 -s -o $(BIN) $(SRC).o

clean:
	@rm -f $(SRC).o $(BIN)
