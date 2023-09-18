FROM archlinux:latest

RUN pacman --noconfirm -Syu openssh diffutils rsync

RUN curl -s -L -o /root/unison.tar.gz https://github.com/bcpierce00/unison/releases/download/v2.53.3/unison-2.53.3+ocaml4.08-ubuntu-x86_64.tar.gz && \
    tar -xf /root/unison.tar.gz -C /usr/local/ && \
    rm /root/unison.tar.gz

ENTRYPOINT ["/usr/local/bin/unison"]