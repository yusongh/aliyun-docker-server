echo -e "---------docker Login--------"
docker login --username=$1 registry.cn-hangzhou.aliyuncs.com --password=$2
echo -e "---------docker Stop--------"
docker stop vue3-elm
echo -e "---------docker Rm--------"
docker rm vue3-elm
docker rmi registry.cn-hangzhou.aliyuncs.com/yusongh/vue3-elm:latest
echo -e "---------docker Pull--------"
docker pull registry.cn-hangzhou.aliyuncs.com/yusongh/vue3-elm:latest
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 8080:80 --name vue3-elm registry.cn-hangzhou.aliyuncs.com/yusongh/vue3-elm:latest
echo -e "---------deploy Success--------"