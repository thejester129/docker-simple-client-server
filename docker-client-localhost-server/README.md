another oft stumbled upon use case - a docker client trying to communicate with a service on localhost

by default docker will use a bridge network so the docker client cannot simply call localhost as the docker localhost will not be the same as the pc localhost as they are on different networks

the magic here is docker.host.internal - this will route to localhost
