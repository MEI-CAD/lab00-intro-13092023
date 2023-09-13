all: build build_args

build:
	gcc intro.c -o intro

build_args:
	gcc intro_args.c -o intro_args

run: build
	./intro

debug:
	gcc intro.c -g -o intro

profile: clean
	gcc intro_args.c -pg -o intro_args
	./intro_args 1000000 3
	gprof intro_args gmon.out > analysis.txt

clean:
	rm -f intro intro_args