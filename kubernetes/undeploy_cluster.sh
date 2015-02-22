#!/bin/sh
../../kubernetes/cluster/kubectl.sh stop -f redis.json
../../kubernetes/cluster/kubectl.sh stop -f redis-service.json
../../kubernetes/cluster/kubectl.sh stop -f cart.json
../../kubernetes/cluster/kubectl.sh stop -f cart-service.json
../../kubernetes/cluster/kubectl.sh stop -f mongodb.json
../../kubernetes/cluster/kubectl.sh stop -f mongodb-service.json
../../kubernetes/cluster/kubectl.sh stop -f product.json
../../kubernetes/cluster/kubectl.sh stop -f product-service.json
../../kubernetes/cluster/kubectl.sh stop -f navigation.json
../../kubernetes/cluster/kubectl.sh stop -f navigation-service.json
../../kubernetes/cluster/kubectl.sh stop -f shop.json
../../kubernetes/cluster/kubectl.sh stop -f shop-service.json
../../kubernetes/cluster/kubectl.sh stop -f catalog.json
../../kubernetes/cluster/kubectl.sh stop -f catalog-service.json

../../kubernetes/cluster/kubectl.sh delete -f redis.json
../../kubernetes/cluster/kubectl.sh delete -f redis-service.json
../../kubernetes/cluster/kubectl.sh delete -f cart.json
../../kubernetes/cluster/kubectl.sh delete -f cart-service.json
../../kubernetes/cluster/kubectl.sh delete -f mongodb.json
../../kubernetes/cluster/kubectl.sh delete -f mongodb-service.json
../../kubernetes/cluster/kubectl.sh delete -f product.json
../../kubernetes/cluster/kubectl.sh delete -f product-service.json
../../kubernetes/cluster/kubectl.sh delete -f navigation.json
../../kubernetes/cluster/kubectl.sh delete -f navigation-service.json
../../kubernetes/cluster/kubectl.sh delete -f shop.json
../../kubernetes/cluster/kubectl.sh delete -f shop-service.json
../../kubernetes/cluster/kubectl.sh delete -f catalog.json
../../kubernetes/cluster/kubectl.sh delete -f catalog-service.json