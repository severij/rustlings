FROM rust:latest
RUN rustup component add clippy
WORKDIR /usr/src
COPY . rustlings
RUN cd rustlings && cargo install --force --path . && cargo clean
WORKDIR /opt/rustlings
