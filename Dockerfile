FROM perl:latest

RUN mkdir /myapp
VOLUME /myapp

RUN cpanm Carton
RUN useradd -m myuser

WORKDIR /myapp
USER myuser

ENTRYPOINT [ "carton", "exec" ]
