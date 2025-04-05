FROM jellyfin/jellyfin:latest

RUN echo "deb http://deb.debian.org/debian bullseye main contrib non-free" >> /etc/apt/sources.list && \
    apt-get update

RUN apt-get update && apt-get install -y \
  ccextractor \
  comskip \
  && rm -rf /var/lib/apt/lists/*
