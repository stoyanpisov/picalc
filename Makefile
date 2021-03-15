CC=gcc
CFLAGS=
TST_FILE=output.txt
TMP_FILE=output.tst
EXE=pi.x
SRC=pi.c
OBJ=pi.o

$(OBJ): $(SRC)
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXE): $(OBJ)
	$(CC) -o $(EXE) $(OBJ)

build: $(EXE)

test:
	./$(EXE) > $(TMP_FILE)
	diff $(TMP_FILE) $(TST_FILE)

all: build test

clean:
	rm -f $(OBJ) $(EXE) $(TMP_FILE)
