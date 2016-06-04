FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y duplicity par2 openssh-client python-paramiko python-gobject-2 python-pexpect

RUN mkdir ~/.ssh

COPY backup /backup
RUN chmod +x /backup
CMD ["/backup"]

ENV PORT 22
ENV FULL_IF_OLDER_THAN 10D
ENV REMOVE_ALL_BUT_N_FULL 15
ENV REMOVE_ALL_INC_OF_BUT_N_FULL 10
