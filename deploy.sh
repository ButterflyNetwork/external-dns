export ECR_HOSTNAME=853813216061.dkr.ecr.us-east-1.amazonaws.com
export IMAGE_NAME=k8s/external-dns
export TAG=v0.7.4

docker build -f Dockerfile -t $IMAGE_NAME:$TAG .
docker tag $IMAGE_NAME:$TAG $ECR_HOSTNAME/$IMAGE_NAME:$TAG

docker push $ECR_HOSTNAME/$IMAGE_NAME:$TAG
