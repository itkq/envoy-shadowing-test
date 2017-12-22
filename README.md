Exported from https://github.com/envoyproxy/envoy/blob/master/examples/front-proxy/

## Usage

```
$ docker-compose up --build -d

$ curl localhost:8000/service/a
Hello from behind Envoy (service A)! hostname: f10f61161ff7 resolvedhostname: 172.21.0.3

$ curl localhost:8000/service/a/b/
Hello from behind Envoy (service B)! hostname: 7465f069635d resolvedhostname: 172.21.0.2
```

---

To learn about this sandbox and for instructions on how to run it please head over
to the [envoy docs](https://www.envoyproxy.io/docs/envoy/latest/install/sandboxes/front_proxy)
