mkdir -p /opt/project/src public/dist
cp -R scripts/ /opt/project/src/
cd /opt/project
npm run build
cp -R dist/ public/dist/
