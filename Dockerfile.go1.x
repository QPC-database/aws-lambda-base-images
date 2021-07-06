FROM scratch

ADD 11af155ac5823dd4197635650dcfe264a4529c29430bf3a316255e7cd5833c56.tar.xz /
ADD 25620c53a6cac68b68fea6bc99198bc8f6fa3f485684fb6d72bf5714e8b03743.tar.xz /
ADD 51323ea149ec20cf25c824d6e7ef9d9fcb5f575c783abdad5db5045f089c7676.tar.xz /
ADD 5998b163fd0cc76dedc8685e8fceabefa57577c72c6a515b98483f035a34be5b.tar.xz /
ADD 675f1f055ff9a2ef212354184773a30f91c446e6ba79688b3b6705bf2881e918.tar.xz /
ADD ca5eb04468b96d092ff6f81d06d0745f1bb08371f92c90f04622c15db12d2667.tar.xz /
ADD ed39ff3cb2976048e2a570ce522474b90eeb0ad208eeda2f49512ab3908b279c.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

