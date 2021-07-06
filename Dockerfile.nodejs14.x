FROM scratch

ADD 49a0c0c0992c9ed081742ca360b75ef688510c5f6f2ab098b6f772dbd6bcd077.tar.xz /
ADD 54bf08c91bbe7a98149f34953a337b455cde6c878ccef0654fdbd9551bc3f7fb.tar.xz /
ADD 6a7447333f322f24805d73b79151fc0eab978a2eecd4f11150852ede48acb63f.tar.xz /
ADD a1bc9f4110051dedccc8a867d9e730d1cced322d2120e313d2ab838b2f7ca373.tar.xz /
ADD ae3fffcdec5b7085be946972186e7adb66ea463d5aab9c5cedff6857d185ced2.tar.xz /
ADD e849513bfdc131005890315c0737292304cff80caa3a4153183bf8adcc1fbe97.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

