FROM docker:latest

COPY builder.sh /builder.sh

RUN chmod +x /builder.sh

ENTRYPOINT ["/bin/sh", "/builder.sh"]
