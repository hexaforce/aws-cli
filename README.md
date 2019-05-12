# ローカルでAWS環境を構築する

## 1.Docker Networkの作成

```sh
docker network create aws_local_vpc
```

## 2.環境立ち上げ
```sh
docker-compose up
```

## 3.CLIのDockerImageをビルド
```sh
docker build . -t hexaforce/aws-cli
```

## 4.環境構築ツールの実行
```sh
docker run --net=aws_local_vpc hexaforce/aws-cli
```
