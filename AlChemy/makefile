# The subdirs we intend to build every time we say "make"
SUBDIRS = IPC/Socket IPC/Shmem LambdaReactor TypeSynthesis

all:
	@for d in $(SUBDIRS); do (cd $$d; make all); done

veryclean:
	@for d in $(SUBDIRS); do (cd $$d; make veryclean); done
