FROM jellyfin/jellyfin:latest

# Install additional dependencies
RUN git clone https://github.com/CCExtractor/ccextractor.git /opt/ccextractor

# Build CCExtractor
WORKDIR /opt/ccextractor/linux
RUN make clean && make