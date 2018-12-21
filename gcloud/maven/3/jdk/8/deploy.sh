GOOGLE_KEY_FILE=/opt/client-keyfile.json
cd ${BITBUCKET_CLONE_DIR}
echo -n "Creating client key json file..."
echo ${GOOLE_KEY_DATA} | base64 -d > ${GOOGLE_KEY_FILE}
echo " [OK]"
echo "Authenticating google cloud service..."
gcloud auth activate-service-account --key-file ${GOOGLE_KEY_FILE}
echo " [OK"
echo "Check current directory:"
pwd
mvn clean -B verify -P DEV -DskipTests appengine:deploy
