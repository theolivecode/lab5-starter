all: number-server
       
number-server: http-server.c number-server.c
	gcc -std=c11 -Wall -Wno-unused-variable -fsanitize=address -g http-server.c number-server.c -o number-server

clean:
	rm -f number-server
