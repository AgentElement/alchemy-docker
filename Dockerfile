# FROM alpine:latest
FROM archlinux:latest

# RUN apk add build-base
RUN pacman -Syu --noconfirm base-devel vim gdb git

# Douglas Moore got camllight 75 running. Thanks!
RUN git clone https://git.sr.ht/~dglmoore/camllight

# TODO: pull a fixed gcc from the AUR.
# RUN mkdir /home/build
# RUN chgrp nobody /home/build
# RUN chmod g+ws /home/build
# RUN setfacl -m u::rwx,g::rwx /home/build
# RUN setfacl -d --set u::rwx,g::rwx,o::- /home/build
# RUN git clone https://aur.archlinux.org/gcc11.git /home/build/gcc11
# RUN ls /home/build/
# RUN sudo -u nobody makepkg  -p /home/build/gcc11/PKGBUILD -Si

WORKDIR .

COPY . .

RUN make -C camllight/src configure 
RUN make -C camllight/src world
RUN make -C camllight/src install

RUN make -C LambdaC

RUN make -C AlChemy all

# CMD ["sh"]
CMD ["./AlChemy/LambdaReactor/ALCHEMY"]
