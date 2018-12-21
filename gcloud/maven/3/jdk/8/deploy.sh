GOOGLE_KEY_FILE=/opt/client-keyfile.json
cd ${BITBUCKET_CLONE_DIR}
echo "Creating client key json file..."
echo ${GOOLE_KEY_DATA} | base64 -d > ${GOOGLE_KEY_FILE}
echo "Authenticating google cloud service..."
gcloud auth activate-service-account --key-file ${GOOGLE_KEY_FILE} --project=${GOOGLE_PROJECT_ID}
echo "Google cloud environment is ready for: nodejs, python and java. Enjoy :)"
