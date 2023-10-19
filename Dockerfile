FROM rust:slim-buster
RUN apt-get update && \
    apt-get install -y --no-install-recommends mingw-w64 && \
    rustup target add x86_64-pc-windows-gnu
COPY . /wtf
WORKDIR /wtf
RUN cargo build --target x86_64-pc-windows-gnu