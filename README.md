# docker-meowcoin

A dockerizaton of the meowcoin wallet, soon to include kawpowminer (to be named meowcoinminer) support!

# Wallet

On any docker-engine, you may run the wallet:

    sudo usermod -aG docker your_user_account_name_here
    sudo docker-compose build
    sudo docker-compose up -d meowcoin-wallet

If you want to see the docker container info

    sudo docker container ls
    sudo docker ps
    
Once running, you can docker exec into it and run `meowcoin-cli` to interact with the wallet:

    docker exec -ti meowcoin-wallet bash

Now, once in the docker container, you can run the following example commands to check if the wallet automatically made an address, if not, make an address.
You can also check wallet balances, etc.:
    
    $ meowcoin-cli getaddressesbyaccount ""
    $ meowcoin-cli getnewaddress ""
    $ meowcoin-cli getbalance ""

Once you want to stop the node, or to stop the docker container, you must first stop the node using the following:
    
    $ meowcoin-cli stop

Then, wait a few moments and run the following:
    
    exit 

This will allow you to leave the docker container.

Then, to stop and remove the docker container:

    sudo docker container stop meowcoin-wallet
    sudo docker container rm meowcoin-wallet

Enjoy!
