IMAGE="maven-project"
export BUILD_TAG=test
export PASS=dantruong
echo "** Logging in ***"
docker login -u huyga12a1 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG huyga12a1/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push huyga12a1/$IMAGE:$BUILD_TAG
