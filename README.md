# api-gateway
A lightweight personal API gateway

### Usage

#### Build

```bash
$ docker build -t api-gateway .
```

#### Run

First, follow the [instructions](keys/README.md) to set up the self-signed
certificate.

```bash
$ docker run --rm -e SERVERNAME=`hostname` -p 443:443 \
  -v /etc/microservices:/etc/microservices:ro \
  -v /var/run/api-gateway/sockets:/var/run/api-gateway/sockets
  api-console
```

_TODO: Instructions on setting up back-end microservices._
