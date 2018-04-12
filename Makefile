COMPILER=gcc
ARCHIVER=
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=
LIB=

CC_FLAGS = $(COMPILER_FLAGS)
ECC_FLAGS = $(EXTRA_COMPILER_FLAGS)

RELEASEDIR=
INCLUDEDIR=
INCLUDES=

LIBSOURCES:=*.c
INCLUDEFILES:=*.h

hello_world: hello_world.o
	${COMPILER} $(CC_FLAGS) $(ECC_FLAGS) $(INCLUDES) $< -o $@

hello_world.o: hello_world.c
	${COMPILER} $(CC_FLAGS) $(ECC_FLAGS) $(INCLUDES) -c $<

clean:
	rm -rf hello_world hello_world.o
