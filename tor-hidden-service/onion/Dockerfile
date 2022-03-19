FROM debian:bullseye-slim

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y tor
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./torrc /etc/tor/torrc
COPY ./hidden_service /var/lib/tor/hidden_service
RUN chmod -R 700 /var/lib/tor/hidden_service/

CMD ["tor"]
