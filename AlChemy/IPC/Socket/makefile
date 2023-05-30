CLIENT	   = client
SERVER	   = server

CC	= cc
CFLAGS  = 
LIBS    = 

CLIENTFILES = clientSock.c \
              utilities.c \
              socket.c
CLIENTOBJS  = clientSock.o \
              utilities.o \
              socket.o

SERVERFILES = serverSock.c \
              utilities.c \
              socket.c
SERVEROBJS  = serverSock.o \
              utilities.o \
              socket.o

$(CLIENT):  $(CLIENTOBJS)
	    $(CC) -o $(CLIENT) $(CFLAGS) $(CLIENTOBJS) $(LIBS)

$(SERVER):  $(SERVEROBJS)
	    $(CC) -o $(SERVER) $(CFLAGS) $(SERVEROBJS) $(LIBS)

all: $(CLIENT) $(SERVER)

veryclean:      
	rm -f *.o *.bak *~ $(CLIENT) $(SERVER) core

clean:      
	    rm -f *.o core

clientSock.o: include.h utilities.h socket.h
serverSock.o: include.h utilities.h socket.h
socket.o: include.h socket.h
utilities.o: include.h
# DO NOT DELETE
