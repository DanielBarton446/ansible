FROM archlinux:latest
COPY ./personal.yml /usr/local/bin
ADD ./.ssh/ /usr/local/bin/.ssh/
ADD ./tasks/ /usr/local/bin/tasks/
RUN pacman -Syu --noconfirm
RUN pacman -S ansible git --noconfirm

