IMAGE_NAME="venkatarr/snia"
docker build . -t $IMAGE_NAME
docker login -u venkatarr -p $DOCKER_HUB
docker push $IMAGE_NAME
#IMAGE_NAME="venkatarr/snia:${BUILD_NUMBER}"
IMAGE_NAME="venkatarr/snia"
#kubectl run deployment/snia snia=$IMAGE_NAME --port=3000
#kubectl run snia --image=$IMAGE_NAME --port=3000
#kubectl set image deployment/snia snia=$IMAGE_NAME
kubectl create -f /home/ramana/workspace/SNIA/snia.yaml
kubectl create -f /home/ramana/workspace/SNIA/snia_service.yaml
