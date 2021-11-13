target= test
.phony: all $(obj)

all: *.o
	gcc $^  -o $(target) -g
	mv $(target) build/$(target)

*.o: *.c
	gcc $^ -c -g

clean:
	rm ./build/$(target) *.o