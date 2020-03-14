# README

ユーザー作成

```
#  curl --request POST  --url http://localhost:3000/api/v1/auth  --header 'content-type: application/x-www-form-urlencoded'  --data email=EMAIL --data password=PASSWORD  --data password_confirmation=PASSWORD
```

認証必須のAPIテスト

```
# curl --request GET  --url http://localhost:3000/api/v1/test/user  --header 'access-token: xxxx' --header 'client: xxxx' --header 'uid: your mailaddress'
```
