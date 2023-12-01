# would use distroless if i didn't have to create a folder
FROM alpine

WORKDIR /app

RUN adduser -D nonroot

COPY bingo bingo
COPY config.yaml /opt/bingo/config.yaml

RUN mkdir -p /opt/bongo/logs/4e468b68e1 && chown nonroot:nonroot /opt/bongo/logs/4e468b68e1
RUN apk --no-cache add curl

USER nonroot

EXPOSE 19882/tcp

CMD ["/app/bingo", "run_server"]
