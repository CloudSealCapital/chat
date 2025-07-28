## chat-api
docker build -f chat-api.Dockerfile -t registry.cn-hangzhou.aliyuncs.com/caa/chat-api:latest .
docker push registry.cn-hangzhou.aliyuncs.com/caa/chat-api:latest

## chat-rpc
docker build -f chat-rpc.Dockerfile -t registry.cn-hangzhou.aliyuncs.com/caa/chat-rpc:latest .
docker push registry.cn-hangzhou.aliyuncs.com/caa/chat-rpc:latest

## admin-api
docker build -f admin-api.Dockerfile -t registry.cn-hangzhou.aliyuncs.com/caa/admin-api  .
docker push registry.cn-hangzhou.aliyuncs.com/caa/admin-api:latest

## api-rpc
docker docker build -f admin-rpc.Dockerfile -t registry.cn-hangzhou.aliyuncs.com/caa/admin-rpc:latest .
docker push registry.cn-hangzhou.aliyuncs.com/caa/admin-rpc:latest