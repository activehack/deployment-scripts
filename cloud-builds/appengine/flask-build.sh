mkdir -p lib
pip install --upgrade -t lib -r requirements.txt
gcloud app deploy --quiet
