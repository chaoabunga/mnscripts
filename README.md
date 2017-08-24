# chc-scripts
Version: 0.1.1.2

Scripts for installing and updating Chaincoin easily. Installs Masternode based on Privkey input, and a simple web monitor.
Experimental script, use at your own risk!!!

Tested Systems: 
  -Ubuntu 17.04, 16.04, 14.04

Please choose a test system from above.
On a brand new VPS copy and paste the following line and press ENTER:

bash <( curl https://raw.githubusercontent.com/chaoabunga/chc-scripts/master/install-mn.sh ) MASTERNODE_PRIVKEY

Example:

bash <( curl https://raw.githubusercontent.com/chaoabunga/chc-scripts/master/install-mn.sh ) 6FBUPijSGWWDrhbVPDBEoRuJ67WjLDpTEiY1h4wAvexVZH3HnV6

----------------------------------------------------
For update
(Assuming you used the above installation method.)
----------------------------------------------------

curl https://raw.githubusercontent.com/chaoabunga/chc-scripts/master/update-mn.sh | bash -s 

-------------------------------------------
Simple Web Monitoring System
(If you already have a Masternode running)
-------------------------------------------

curl https://raw.githubusercontent.com/chaoabunga/chc-scripts/master/install-web.sh | bash -s 

**********

Donations:  CHC: CRbr8rcYU9zifwsYFcCVPgp6bwrJC5PhUk
