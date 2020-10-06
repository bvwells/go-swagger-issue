from golang:1.15.0

ENV GOWAGGER_URL https://github.com/go-swagger/go-swagger/releases/download/v0.25.0/swagger_linux_amd64
RUN curl -o /usr/local/bin/swagger -L'#' "$GOWAGGER_URL" && chmod +x /usr/local/bin/swagger