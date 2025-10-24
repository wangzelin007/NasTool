docker pull docker.xuanyuan.run/dreamacro/clash:latest
docker pull swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/dreamacro/clash:latest
docker tag swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/dreamacro/clash:latest dreamacro/clash:latest
docker run -d \
  --name clash \
  -p 7890:7890 \
  -p 7891:7891 \
  -p 9090:9090 \
  -v /path/to/config.yaml:/root/.config/clash/config.yaml \
  dreamacro/clash:latest