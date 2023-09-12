all: build build_args

build:
	gcc intro.c -o intro

build_args:
	gcc intro_args.c -o intro_args

run: build
	./intro

clean:
	rm -f intro intro_args