export BUILD_TAG=test
export PASS=dantruong
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
# scp /tmp/.auth root@192.168.139.130:/tmp/.auth
# scp start_app.sh root@192.168.139.130:/tmp/start_app.sh
# ssh root@192.168.139.130 "bash /tmp/start_app.sh"
bash ./pipeline6/jenkins/deploy/start_app.sh
