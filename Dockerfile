FROM silex/emacs:25.1
MAINTAINER johnson.denen@gmail.com

RUN su -c "useradd johnson -s /bin/bash -m"
USER johnson

ENTRYPOINT ["/bin/bash"]
