FROM node:buster-slim
LABEL maintainer="Joe Block <jpb@unixorn.net>"
LABEL description="doctoc on node:buster-slim"

RUN npm install -g doctoc && \
    rm -fr /tmp/* /var/lib/apt/lists/*

CMD ["bash"]
