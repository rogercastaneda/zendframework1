# zendframework1
NGINX + PHP7 + Zend Framework


## Run 
```
docker run -it --rm \
  -p 8088:80 \
  --name zf1 \
  -e "APP_WEBROOT=/app" \
  rogercastaneda/zendframework1:0.1 sh ```

## Run php56 version

```
docker run -itr --rm --name nginx-php rogercastaneda/zendframework1:php56x sh
```