FROM rigetti/quilc

ARG build_target

# build the qvm app
ADD . /src/qvm
WORKDIR /src/qvm
RUN git clean -fdx && make ${build_target}

EXPOSE 5000

ENTRYPOINT ["./qvm"]
