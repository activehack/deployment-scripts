echo "Begin installing node v10"
URL=https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.xz
OUTFILE=/tmp/node.tar.xz
SETUPDIR=/tmp/node-setup
mkdir -p ${SETUPDIR}
wget -O ${OUTFILE} ${URL}
tar -xvf ${OUTFILE} --directory ${SETUPDIR}
cp -rfv ${SETUPDIR}/node-*-x64/bin/./ /usr/local/bin/
cp -rfv ${SETUPDIR}/node-*-x64/include/./ /usr/local/include/
cp -rfv ${SETUPDIR}/node-*-x64/lib/./ /usr/local/lib/
cp -rfv ${SETUPDIR}/node-*-x64/share/./ /usr/local/share/
rm -rf ${OUTFILE} ${SETUPDIR}
echo "Node v10 is installed"
