# Minimal docker image for Rust applications

This repo exists to help you easily make very lightweight docker
containers with applications written in Rust

Rust's Hello World (with `--release` option) packs into an image with
a size of 5.75MB

## Dockerfile

Multistage build is used to achieve minimal docker image size. Built
against MUSL, copied to docker's `scratch`.

## License

MIT or Apache 2.0, at your choice.

## Author

Sergey Mishin <sergey.a.mishin@gmail.com>


