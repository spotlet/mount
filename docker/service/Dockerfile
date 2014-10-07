
FROM base
MAINTAINER "Joseph Werle <joseph.werle@gmail.com>"

RUN apt-get install -y nodejs
RUN ln -s $(which nodejs) /usr/bin/node
#RUN mkdir -p /usr/local/spotlet/service

ENV SPOTLET_HTTP_PORT 6889
EXPOSE 6889
CMD env PATH /usr/local/spotlet/bin:$PATH

