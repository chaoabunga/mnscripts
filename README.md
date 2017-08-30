---------
mnscripts
---------
Version: 0.1.1.2
Scripts for installing and updating masternode coins such as ChainCoin and ArcticCoin easily. Installs Masternode based on Privkey input, and a simple web monitor.
Experimental script, use at your own risk!!!

----------------
Supported coins
----------------
-ChainCoin, ArcticCoin, EternityCoin

---------------
Tested Systems: 
---------------
-Ubuntu 17.04, 16.04, 14.04

Please choose a test system from above.
On a brand new VPS copy and paste the following line and press ENTER:

bash <( curl https://raw.githubusercontent.com/chaoabunga/mnscripts/master/install-[COIN].sh ) MASTERNODE_PRIVKEY

Example:

(ChainCoin)

bash <( curl https://raw.githubusercontent.com/chaoabunga/mnscripts/master/install-chc.sh ) 6FBUPijSGWWDrhbVPDBEoRuJ67WjLDpTEiY1h4wAvexVZH3HnV6

(ArcticCoin)

bash <( curl https://raw.githubusercontent.com/chaoabunga/mnscripts/master/install-arc.sh ) 6uQoYPjwCs6yknDS9g88XCUnVzcYF6EwXFwZC2JaidKB3x5PAFX

(Eternity)

bash <( curl https://raw.githubusercontent.com/chaoabunga/mnscripts/master/install-ent.sh ) 
4RCKB1vhGw2wGEsihdZPcvwDNp7NAggtnN1w4T5htB7LcNEbPWB

----------------------------------------------------
For update
(Assuming you used the above installation method.)
----------------------------------------------------

curl https://raw.githubusercontent.com/chaoabunga/mnscripts/master/update-mn.sh | bash -s 

-------------------------------------------
Simple Web Monitoring System
(If you already have a Masternode running)
-------------------------------------------

curl https://raw.githubusercontent.com/chaoabunga/mnscripts/master/install-web.sh | bash -s 

**********

Donations:  
CHC: CRbr8rcYU9zifwsYFcCVPgp6bwrJC5PhUk

ARC: AeRTDBq2sCi8YbfSxi7McH8UrYYAmjV6L5

ENT: EQZ1ZJtDMwr5jHQAqqiE1HhtAkfqZYAACe
            
Live stream help and video for masternodes: https://www.youtube.com/c/chaoabunga
