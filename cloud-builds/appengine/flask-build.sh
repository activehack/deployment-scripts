[ ! -e requirements.txt ] || pip install --upgrade -t lib -r requirements.txt
gcloud app deploy --quiet
[ ! -e dispatch.yaml ] || gcloud app deploy dispatch.yaml --quiet
[ ! -e index.yaml ] || gcloud datastore indexes create index.yaml --quiet
