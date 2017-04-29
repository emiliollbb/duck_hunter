#OBJS specifies which files to compile as part of the project 
OBJS = duck_hunter.c 

#CC specifies which compiler we're using 
CC = gcc 

#COMPILER_FLAGS specifies the additional compilation options we're using 
# -w suppresses all warnings 
COMPILER_FLAGS = -Wall

#LINKER_FLAGS specifies the libraries we're linking against 
LINKER_FLAGS = -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lm

#OBJ_NAME specifies the name of our exectuable 
OBJ_NAME = duck_hunter 

#This is the target that compiles our executable 

all : $(OBJS)
	$(CC) $(OBJS) $(COMPILER_FLAGS) $(LINKER_FLAGS) -o $(OBJ_NAME)

clean :
	rm duck_hunter

