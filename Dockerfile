FROM alpine:3

RUN pip install gunicorn==20.1.0

RUN apk add --no-cache bash ffmpeg

RUN mkdir /usr/src/app -p
WORKDIR /usr/src/app/

ADD . /usr/src/app/
CMD gunicorn app:app & ./stream.sh
