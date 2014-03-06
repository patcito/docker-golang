FROM stackbrew/ubuntu:saucy

# env vars
ENV HOME /root
ENV GOPATH /root/go
ENV PATH /root/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

# GOPATH
RUN mkdir -p /root/go

# apt
RUN apt-get update
RUN apt-get dist-upgrade -y --force-yes
RUN apt-get install -y --force-yes build-essential mercurial git-core subversion wget
RUN apt-get clean


# go 1.2 tarball
RUN wget -qO- https://go.googlecode.com/files/go1.2.linux-amd64.tar.gz | tar -C /usr/local -xzf -
