FROM alpine:3.9

RUN apk upgrade && \
    apk update && \
    apk add --no-cache musl-dev \
            wget \
            gcc \
            openssl \
            libjpeg-turbo-dev \
            lcms2-dev \
            jasper-dev

RUN wget https://raw.githubusercontent.com/ncruces/dcraw/master/dcraw.c
RUN mkdir -p /opt/dcraw/bin
RUN gcc -o /opt/dcraw/bin/dcraw -O4 dcraw.c -lm -ljasper -ljpeg -llcms2

ENV PATH="/opt/dcraw/bin:${PATH}"
ENTRYPOINT ["dcraw"]
