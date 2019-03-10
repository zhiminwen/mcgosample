FROM golang:latest 
RUN mkdir /app && useradd -m -u 1000 app && chown app:app /app
USER 1000
ADD . /app/ 
WORKDIR /app 
RUN go build -o main . 
CMD ["/app/main"]
EXPOSE 8000
