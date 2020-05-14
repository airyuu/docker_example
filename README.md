The project are going to give an example to start a Node.JS application with MongoDB, Redis, RabbitMQ by docker-compose in MacOS environment.

### Prerequest

1.  [MongoDB](http://www.mongodb.com) (v3.6)
2.  [Redis](http://redis.io) (v2.8)
3.  [RabbitMQ](https://www.rabbitmq.com) (v3.6.5)

### Get Started

1. Build images

```shell
# build images and pass the ssh private key as argument to pull private dependencies
docker-compose build --build-arg SSH_KEY="$(cat $HOME/.ssh/id_rsa)"
```

2. Start the services

```shell
# start all services in frontend mode, add -d to start in backend mode
docker-compose up
```