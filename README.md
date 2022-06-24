# Service (Java) Maven Build Demo

## 如何编译构建

```bash
docker build -t tman-demo-service:java .
```

## 如何运行服务

```bash
docker run -d -p 8081:8080 -it tman-demo-service:java
```

## 如何访问服务

```bash
curl http://127.0.0.1:8081/api/status
```

返回结果为 `{"status":"healthy"}`
