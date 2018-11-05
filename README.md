# dApp_Uber
Decentralised uber for ethereum network

#ABOUT dApps
>> Unlike "web applications" in which user uses browser to connect to application running on a server having all the data,
>> in "Decentralised Applications", all the users/nodes talk to each other in P2P Network manner, data is also shared over blockchain and even the code of application is shared among those peers.
>> Public ledger represents data layer, and smart contract represents business logic.


#index
1. dependencies
2. Truffle directory structure
3. Client-side code flow
4. Testing : why is it soo important
5. Important concepts


# 1. dependencies
1. npm - for truffle
2. Truffle framework 
   - allows to create dApp on Ethereum network
   - gives suite of tools to write smart contracts with Solidity (prog lang)
   - provides platform for testing (very important)
   - provides tools to deploy smart contract on Blockchain
   - helps to develope client side application
3. Genache : local in-memory Blockchain, for develoment purposes.
4. Metamask
   - A chrome extension which transforms "web browser" into "Blockchain browser"
   - helps to connect and interact with deployed Blockchain
5. Mocha : testing framework
6. Chai  : assertion library

# 2. Truffle directory structure
>> contracts/Migration.sol : handles migrations whenever we deploy smartcontract on Blockchain
>> Migrations/1_initial_migraion.js : create transaction on Blockchain, aka migrate. Refreshes contract like we change state of Database
>> ./truffle.js : main configuration file for truffle program
>> src/  : all client side application logic

# 3. Client-side code flow
>> main flow is defined in src/js/app.js as follows
>> 1. App init(); 	// Initializes this app when window loads
>> 2. initWeb3();	// Connects App to Blockchain (first start Genache)
>> 3. initContract();	// loads up contract into front end.
>>>> 	1. loads "Uber.json" artifact
>>>>	2. uses it to generate truffle contract
>>>>	3. interact with contract through app
>> 4. App.render();	// displays/renders on web browser

# 5. Important concepts
>> 
