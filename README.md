# chc-scripts
Scripts for installing and updating Chaincoin easily.

On a brand new VPS type:

sudo apt-get update

sudo apt-get install -y git 

git clone https://github.com/chaoabunga/chc-scripts

cd chc-scripts

git config core.fileMode false

chmod +x install-chc.sh

***Important***
***Make sure you edit the chaincoin.conf file with right values first before install.***

./install-chc.sh

-----------
For update
-----------

chmod +x install-chc.sh

./update-chc.sh
