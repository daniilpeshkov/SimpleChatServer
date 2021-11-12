obj= vector.o main.o
target= test
.phony: all $(obj)

all: main.o vector.o
	gcc $^ -o test -o $(target)
	mv $(target) build/$(target)

*.o: *.c
	gcc $^ -c -o 

clean:
	rm $(obj) test