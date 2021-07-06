FROM scratch

ADD 1f73dd780dafbb1b5c7379ab451e02df6b968ccc199c01816156c82f35ba20da.tar.xz /
ADD 203cf33a4493dcb6d284193f4b8c05f056f96f1ec99cc2a92974672fd725244b.tar.xz /
ADD 6a7447333f322f24805d73b79151fc0eab978a2eecd4f11150852ede48acb63f.tar.xz /
ADD 89ef4efb0aa28a3937acd8bac7beb5e4a9234f57a4cf086d1f39b9b9d127280e.tar.xz /
ADD b1d2b68b0ce4aa34456bf68dcd5323c0fea1099979a231d518de70ddc1a13e7f.tar.xz /
ADD e8e5f66e66a0eb1b819e7016e943f745229398b22d3051cba838226dd96f0b1f.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

