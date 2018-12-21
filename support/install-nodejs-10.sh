echo "Begin installing node v10"
URL=https://nodejs.org/dist/v10.14.2/node-v10.14.2-linux-x64.tar.xz
OUTFILE=/tmp/node.tar.xz
SETUPDIR=/tmp/node-setup
mkdir -p ${SETUPDIR}
wget -O ${OUTFILE} ${URL}
tar -xvf ${OUTFILE} --directory ${SETUPDIR}
mv -v ${SETUPDIR}/node-*-x64/bin/ /usr/bin/
mv -v ${SETUPDIR}/node-*-x64/include/ /usr/include/
mv -v ${SETUPDIR}/node-*-x64/lib/ /usr/lib/
mv -v ${SETUPDIR}/node-*-x64/share/ /usr/share/
rm -rf ${OUTFILE} ${SETUPDIR}
echo "Node v10 is installed"
