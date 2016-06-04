FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y duplicity par2 openssh-client python-paramiko python-gobject-2 python-pexpect

RUN mkdir ~/.ssh

COPY backup /backup
RUN chmod +x /backup
CMD ["/backup"]

ENV PORT 22
