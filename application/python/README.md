Make self signed certificate for localhost

```bash
# 生成私钥
openssl genpkey -algorithm RSA -out /config/nginx/config.d/certs/self.key

# 生成自签名证书
openssl req -new -x509 -key /config/nginx/config.d/certs/self.key -out /config/nginx/config.d/certs/self.crt -days 3650

# 生成 DH 参数
openssl dhparam -out /config/nginx/config.d/certs/dhparam.pem 2048
```

## Build Python App Docker Image

```bash
docker build  --force-rm --no-cache -t app/web .
```