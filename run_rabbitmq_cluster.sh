#!/bin/bash
cd rabbitMQ

docker run -d --rm --net rabbits \
-v ${PWD}/config/rabbit-1/:/config/  \
-e RABBITMQ_CONFIG_FILE=/config/rabbitmq \
-e RABBITMQ_ERLANG_COOKIE=WIWVHCDTCIUAWANLMQAW \
--hostname rabbit-1 \
--name rabbit-1 \
-p 8081:15672 \
-p 56721:5672 \
rabbitmq:3.9-management 

docker run -d --rm --net rabbits \
-v ${PWD}/config/rabbit-2/:/config/  \
-e RABBITMQ_CONFIG_FILE=/config/rabbitmq \
-e RABBITMQ_ERLANG_COOKIE=WIWVHCDTCIUAWANLMQAW \
--hostname rabbit-2 \
--name rabbit-2 \
-p 8082:15672 \
-p 56723:5672 \
rabbitmq:3.9-management 

docker run -d --rm --net rabbits \
-v ${PWD}/config/rabbit-3/:/config/ \
-e RABBITMQ_CONFIG_FILE=/config/rabbitmq \
-e RABBITMQ_ERLANG_COOKIE=WIWVHCDTCIUAWANLMQAW \
--hostname rabbit-3 \
--name rabbit-3 \
-p 8083:15672 \
-p 56722:5672 \
rabbitmq:3.9-management 