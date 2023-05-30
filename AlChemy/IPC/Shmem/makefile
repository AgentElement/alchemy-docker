CLIENT	   = client
SERVER	   = server

CC	= cc
CFLAGS  = 
LIBS    = 

CLIENTFILES = clientShmem.c \
              utilities.c \
              shmem.c
CLIENTOBJS  = clientShmem.o \
              utilities.o \
              shmem.o

SERVERFILES = serverShmem.c \
              utilities.c \
              shmem.c
SERVEROBJS  = serverShmem.o \
              utilities.o \
              shmem.o

$(CLIENT):  $(CLIENTOBJS)
	    $(CC) -o $(CLIENT) $(CFLAGS) $(CLIENTOBJS) $(LIBS)

$(SERVER):  $(SERVEROBJS)
	    $(CC) -o $(SERVER) $(CFLAGS) $(SERVEROBJS) $(LIBS)

all: $(CLIENT) $(SERVER)

veryclean:      
	rm -f *.o *.bak *~ $(CLIENT) $(SERVER) core

clean:      
	    rm -f *.o core

clientShmem.o: utilities.h shmem.h
serverShmem.o: include.h shmem.h
shmem.o: include.h
utilities.o: include.h
