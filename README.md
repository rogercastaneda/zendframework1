# zendframework1
NGINX + PHP7 + Zend Framework


## Run 
```
docker run -it --rm \
  -p 8088:80 \
  --name zf1 \
  -e "APP_WEBROOT=/app" \
  rogercastaneda/zendframework1:0.1 sh ```