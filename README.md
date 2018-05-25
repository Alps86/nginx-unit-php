# Build
```
docker build -t php-unit .
```

# Test
```
docker run -v `pwd`/applications:/applications  -p 8300:8300 --name php-unit --rm -d php-unit

```
See http:://localhost:8300
