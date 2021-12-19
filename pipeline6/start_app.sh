export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)
echo "PASS is private" $PASS
docker login -u huyga12a1 -p $PASS
cd ~/maven && docker-compose pull maven && docker-compose up -d
