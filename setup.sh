#!/bin/bash

echo "rig name (for pool)?"
read name

echo "# DOWNLOADING XMRIG..."
curl -L https://github.com/xmrig/xmrig/releases/download/v6.22.0/xmrig-6.22.0-jammy-x64.tar.gz -o xmrig-6.22.0-jammy-x64.tar.gz

echo "# EXTRACTING ARCHIVE..."
tar -xvf xmrig-6.22.0-jammy-x64.tar.gz

echo "# DELETEING ARCHIVE..."
rm xmrig-6.22.0-jammy-x64.tar.gz

echo "# CREATING mine.sh STARTUP SCRIPT..."
echo "#!/bin/bash

./xmrig -o gulf.moneroocean.stream:10128 -a randomx -u 436b2Htx5guZgFdDxFRNKmeH9ozZfCc89EgN9PdV1LBLHib5iFS88jCe3W1q8BmcA2MrbLtAkCd16SB7CXLShkoTSA79rSj -p $name" > mine.sh
chmod +x mine.sh

echo "# SUCCESS # TO BEGIN MINING, RUN mine.sh"