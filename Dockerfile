FROM ubuntu:latest

EXPOSE 8000

WORKDIR /app

ENV DB_HOST=localhost DB_PORT=5432
ENV DB_USER=root DB_PASSWORD=root DB_NAME=root
ENV PORT=8000

COPY ./main main
RUN chmod +x main

COPY ./assets/ assets/
COPY ./templates/ templates/

CMD ["./main"]
