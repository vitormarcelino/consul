
Init agent on master
```
consul agent -server -ui -bootstrap-expect 1 -data-dir /var/consul.d -config-dir /etc/consul.d -node consul-master -client 0.0.0.0
```

Init agent and join on service1
```
consul agent -data-dir /var/consul.d -config-dir /etc/consul.d -node service1
consul join consul_master
```

Init agent and join on service2
```
consul agent -data-dir /var/consul.d -config-dir /etc/consul.d -node service2
consul join consul_master
```

Utils
```
dig @localhost -p 8600 web.service.consul SRV
curl http://localhost:8500/v1/catalog/service/web?pretty
```