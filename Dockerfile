FROM ekidd/rust-musl-builder AS builder
WORKDIR /app
COPY ./ ./

RUN sudo chown -R rust:rust ./

RUN cargo build --release

FROM scratch

WORKDIR /root/
COPY --from=builder /app/target/x86_64-unknown-linux-musl/release/helloworld .
CMD ["/root/helloworld"]
