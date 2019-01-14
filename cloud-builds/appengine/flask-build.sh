mkdir -p lib
pip install --upgrade -t lib -r requirements.txt
ls -la
gcloud app deploy --quiet
