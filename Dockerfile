FROM docker.io/debian:bullseye AS builder

RUN apt-get update -y && \
    apt-get install -y texlive texlive-formats-extra make

WORKDIR /build/

COPY . /build/

RUN make

FROM docker.io/galenguyer/nginx:1.21.3

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /build/constitution.pdf /usr/share/nginx/html/constitution.pdf
