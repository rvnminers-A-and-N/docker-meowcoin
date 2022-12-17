# docker-meowcoin

A dockerizaton of the meowcoin wallet, soon to include kawpowminer (to be named meowcoinminer) support!

# Wallet

To begin create the meowcoin user and give it sudo group privelages:

    sudo adduser meowcoin
    sudo usermod -aG sudo meowcoin

Then, one should install docker, docker engine, and docker compose, there are a variety of ways to do this, this is a basic example:
    
    sudo apt-get install docker.io docker-engine docker-ce docker-ce-cli containerd.io docker-compose-plugin
    sudo snap install docker

Note above, if any dependencies fail to install and it haults the command, just simply remove it and re-run the line. You may need to look at the Docker documentation.

On any docker-engine, you may run the wallet:

    sudo usermod -aG docker meowcoin
    sudo docker-compose build
    sudo docker-compose up -d meowcoin-wallet

If you want to see the docker container info:

    sudo docker container ls
    sudo docker ps
    
If you want to see the docker container logs:
    
    sudo docker logs meowcoin-wallet

If you want to watch the docker container logs every n seconds (n = 2 here):

    sudo watch -n 2 docker logs meowcoin-wallet
    
Once running, you can docker exec into it and run `meowcoin-cli` to interact with the wallet by running the following command:

    sudo docker exec -ti meowcoin-wallet bash

Now, once in the docker container, you can run the following example commands to check if the wallet automatically made an address, if not, make an address.
You can also check wallet balances, etc. Typically, the "" field is populated as such, "ExampleAccount" so that the wallet on the node is listed under that user.
However, sometimes if a user does not want to use an account, and just want to make a wallet for the node itself, they use the empty quotes, "".:
    
    meowcoin-cli getaddressesbyaccount ""
    meowcoin-cli getnewaddress ""
    meowcoin-cli getbalance ""

Once you want to stop the node, or to stop the docker container, you must first stop the node using the following:
    
    meowcoin-cli stop

Then, wait a few moments and run the following to exit the docker container:
    
    exit 

Then, to stop and remove the docker container:

    sudo docker container stop meowcoin-wallet
    sudo docker container rm meowcoin-wallet

Enjoy!

-Alpha|Crypticwizardry.com
