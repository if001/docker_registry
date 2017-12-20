TARGET=45.32.35.230:5000
TAG="nginx:latest"
REPOGITRY_NAME="mynginx"

proc=`ps aux | grep /usr/bin/dockerd | grep -v "grep" | wc -l`
if [ $proc -ne 1 ]; then
	sudo service docker start
fi

sudo docker build -t ${TAG} $WORKSPACE
sudo docker tag ${TAG} ${TARGET}/${REPOGITRY_NAME}/${TAG}
sudo docker push -f ${TARGET}/${REPOGITRY_NAME}/${TAG}
