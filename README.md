# Solidity Contracts
Solidity exercises from Kingsland.

## Simple Storage Contract
Write a simple contract in Solidity that keeps in the blockchain an integer variable and provides public functions to read it and to change it. 

## Incrementor Contract
Write a Solidity contract, as described below:
* The contract holds a certain value
    * value (uint) -> not accessible outside the contract
*	Anyone can see the function and read the value
    *	Returns uint
    *	Not modifying the state of blockchain!
*	Anyone can increment the value
    *	increment(uint delta) 
    * No output!
* Test and play around with the contract.

## Previous Invoker
Write a Solidity contract as described below:
* Keep the address of its previous invoker in the persistent storage -> not accessible outside the contract
  * getLastInvoker() -> returns (bool, address)
  * true / false – if a previous invoker exists or not
  * The address that has invoked the contract before you
  * Accessible from outside the contract
Add appropriate events for the functions [Events](http://solidity.readthedocs.io/en/v0.4.21/contracts.html#events). Test and play around with the contract.

## Registry of Certificates
Write a simple contract in Solidity that represents a registry of certificates:
* Each certificate has its owner and content calculated as hash
* The registry holds of all valid certificate hashes stored on the blockchain (as string)
* Only the owner can add certificate hashes: add(hash)
* You may use this [tool](https://emn178.github.io/online-tools/sha3_512.html) to calculate hashes
* Anyone can verify а certificate by its hash: verify(hash)
Add appropriate events for the functions. Test and play around with the contract.

## Simple Token
Write a contract that represents a simple token:
* The initial supply must be set at contract’s creation 
  * This amount must be allocated to the address that creates the contract
* You should store the balances of the addresses -> mapping
* Add a functionality that allows for transfer(to, value) of tokens between the address of the contract’s creator and other addresses
  * The number of tokens for transfer must be bigger than 0
  * Check for overflow
Add appropriate events for the functions. Test and play around with the contract.

## The Diary
Alice loves to document facts. In fact, every night before she goes to sleep she loves to remember all the thing which has happened through the day and to write them down in her diary.

Create a Diary Contract in Solidity which:
* Keep in the blockchain a string array of facts and the contract owner
*	Only contract owner (creator) can
  *	Add facts (string fact) -> accessible outside the contract
* Only people who are approved can read the facts
  * getFact(index) – returns specified fact by index [0…count-1]
  *	Solidity cannot return all facts at once (array of strings)
  *	Approved addresses are hardcoded in the contract
*	Everyone can see how many facts there are in the diary 
  *	count() – returns the count of facts -> not change the state of the contract
*	Nobody can delete facts or destroy the contract	
Use modifiers where it is appropriate. Add appropriate events for the functions. Test and play around with the contract.

## Planet Earth Contract
Create contract that:
*	Declares all continents (Europe, Asia, etc..). Use the best way to declare them – we know that there are fixed amount of continents and we know their names
*	Declares a data representing a single country (name, continent, population)
*	Keep track of each country’s capital, so people can check country’s capital by simply giving a name
*	Store only European countries
*	Have a function to add country (should accept only European countries). The function accepts all countrie’s properties (name, continent, population)
*	Have function to add a capital to a single country (No duplicates – i.e. Sofia cannot be a capital of both Bulgaria and Romania)
*	Have a function that gives the capital by a given country name
*	Have a function to remove a capital
*	Have a function that returns the string representation of each continent (i.e. I receive “Asia”, “Europe”, etc.)
*	Have a function that returns all European countries

## Students Info Tracker
 
In the first Blockchain Secondary School every lecturer should store the students’ information. The information should be public and everyone could see it.  
*	Write a simple contract in Solidity that keeps track of students’ names, addresses(eth), array of marks and number in class:
  *	Only the owner of the contract (lecturer) can create students profile and give marks it does not matter the class/lecture (should be store in appropriate data structure)
    * Hint -> use struct
    * Students profile should be stored in an array -> Students[]
  * Everyone can get the information -> get(index) 
Use modifiers where it is appropriate. Add appropriate events for the functions. Test and play around with the contract.

## Lambo Crowdsale
 
Nowadays everyone makes Crowdsales which means everyone gives you money because you just give them promises about better world. Then you just withdraw the money and go to Bali or buy a Lambo. Let’s make one! Let’s buy Lambo and go to Bali!
Write a Solidity contract that has a function through which anyone can send it ethers:
*	Function deposit() should store ethers to the contract balance
  * Hint -> use payable
* Only the owner of the contract can check the current balance of the contract 
  * Contract balance -> this.balance
*	When the owner wants, he can withdraw the ethers and then kill the contract
  *	Hint -> address.transfer(amount)
  *	Hint -> suicide(owner)
Use modifiers where it is appropriate. Add appropriate events for the functions. Test and play around with the contract.

# Solidity
Installing the remix IDE on iMac for using your own GitHub repo. Make sure that you have the full developer version of Xcode.app installed. As a precaution, go to the app store and install it regardless. Follow the instructions. The goal is to get the remixd installed, but it needs the Xcode developer installed to do that.

## Website Resources
* gyp install and the xcode-select comands: [node-gyp on macOS](https://github.com/nodejs/node-gyp/blob/master/macOS_Catalina.md)
* node-gyp and node-gyp-install: [node-gyp GitHub](https://github.com/nodejs/node-gyp/issues/569)
* online IDE locahost setup: [remix-ide](https://remix-ide.readthedocs.io/en/latest/remixd.html)
* dmg to install on MAC: [remix-desktop](https://github.com/ethereum/remix-desktop/releases)

## Requirements
Xcode Developer

## Installation
```bash
$ npm install -g node-gyp-install
$ sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
$ xcodebuild -version
$ npm install -g remixd
install the dmg file.
$ remixd -s /Users/Bethany/git/solidity --remix-ide https://remix.ethereum.org
```
In step 5. you will set it up for the online web IDE. Once you get the remix.app installed, activate the remix plugin from the plugins list. When it tries to connect to your local file system, you will get something like:
```
Sun Jan 19 2020 15:49:17 GMT-0500 (Eastern Standard Time) Connection from origin package://a7df6d3c223593f3550b35e90d7b0b1f.mod rejected.
```
Copy the "package://a7df6d3c223593f3550b35e90d7b0b1f.mod".

Stop the remixd with `Ctrl-C`.

Then restart it with something like:
```
remixd -s /Users/Bethany/git/solidity --remix-ide package://a7df6d3c223593f3550b35e90d7b0b1f.mod
```
Now the remixd will point to your local remix IDE rather than the online IDE.

### Purpose 
So that you can create a repo in your own github account, clone it to your local file system, and then hookup your local remix IDE to use your local github repo. This will allow you to check in code to github.
Unfortunately, it doesn't seem to be possible to create new files in the localhost of the FILE EXPLORERS section of the remix IDE. So I used the Visual Studio Code IDE in conjuction with the remix IDE, so that I can create and edit files locally in the VSC IDE, and then compile and deploy in the remix IDE.

## Remix IDE
Notice the http vs the https. This will allow you to use the remix IDE in the browser and see the local directory on your machine.

To do this:

1. Start the remixd according to the [Installation Steps](#installation) as shown above.
2. In the remix IDE that you started at http://remix.ethereum.org, connect to localhost. You will see: Sat Feb 08 2020 13:55:21 GMT-0500 (Eastern Standard Time) Remixd is listening on 127.0.0.1:65520 Sat Feb 08 2020 13:55:51 GMT-0500 (Eastern Standard Time) Connection accepted.
3. At this point you should see your local files in the browser remixIDE.
4. You can then use the Visual Studio Code (VSC) to edit and syntax check your code.
5. If you have to set the compiler version in the VSC IDE, then create the file .vscode/settings.json in the project home directory and add the following text: { "solidity.compileUsingRemoteVersion": "0.5.5+commit.47a71e8f" }
6. This will cause the VSC solidity compiler to use version 0.5.5.
7. At this point, any changes that you make locally in VSC or in the browser IDE will be reflected on both sides.
8. This will allow you to have a git repo on your local machine that is connected to github on the web and allow to check in changes to your remote github account.

## Module
MI3: Module 3: E1
