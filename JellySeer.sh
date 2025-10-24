docker pull swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/fallenbagel/jellyseerr:latest
docker tag swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/fallenbagel/jellyseerr:latest fallenbagel/jellyseerr:latest
docker run -d \
  --name jellyseerr \
  -e LOG_LEVEL=info \
  -e TZ=Asia/Shanghai \
  -p 5055:5055 \
  -v /path/to/appdata/jellyseerr:/app/config \
  --restart unless-stopped \
  fallenbagel/jellyseerr:latest