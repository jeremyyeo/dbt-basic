# dbt-basic

dbt projects that reproduces issues.

```sh
docker build --no-cache -t dbt-app .
docker run --rm -it -v $PWD:/app dbt-app dbt --log-format json build
for i in {1..100}; do echo "\n>>>>>>>>>> START ITER $i <<<<<<<<<<<"; docker run --rm -it -v $PWD:/app dbt-app dbt --log-format json build || break 1; echo ">>>>>>>>>> END ITER $i <<<<<<<<<<<\n"; sleep 60; done
```
