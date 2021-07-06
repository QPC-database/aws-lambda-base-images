FROM scratch

ADD 065d4e3f9dcdb326af078ce18aee19f0a271f953c24b28d767b9484519cf01f0.tar.xz /
ADD 270503a8223a71a4aad8f5e1dbc15ee08326171656d5d416ab8028f0fa54d507.tar.xz /
ADD 6963967f72ac4de24dc3e5b89014a7c435fa2118f75668b0295ab06c86483a21.tar.xz /
ADD 6a7447333f322f24805d73b79151fc0eab978a2eecd4f11150852ede48acb63f.tar.xz /
ADD a5eb5c61002fb0ba1e350e3f2b7c65d8873979b79e54ef6bc92cac3507311320.tar.xz /
ADD c65c1c6306ab95878cc31728b1f12a349cf95c5c7fa04eebbb99f062421ccbdc.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

