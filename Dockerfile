FROM silex/emacs:25.1
MAINTAINER johnson.denen@gmail.com

RUN su -c "useradd johnson -s /bin/bash -m"
USER johnson

RUN curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
ENV PATH /home/johnson/.cask/bin:$PATH

WORKDIR /home/johnson/code/me
ENTRYPOINT ["/bin/bash"]
