GOOGLE_KEY_FILE=/opt/client-keyfile.json
cd ${BITBUCKET_CLONE_DIR}
echo ${GOOGLE_KEY_DATA} | base64 -d > ${GOOGLE_KEY_FILE}
gcloud auth activate-service-account --key-file ${GOOGLE_KEY_FILE} --project=${GOOGLE_PROJECT_ID}
gcloud -v
