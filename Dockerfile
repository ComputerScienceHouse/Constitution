FROM debian:12  AS builder

ENV TZ=America/New_York
RUN apt-get update -y && apt-get install -y texlive texlive-formats-extra make git nginx

WORKDIR /out/

COPY . .

RUN make

FROM docker.io/galenguyer/nginx:mainline

RUN chmod +rw -R /etc/nginx
RUN chmod +rw -R /usr/share/

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /out/constitution.pdf /usr/share/nginx/html/constitution.pdf
