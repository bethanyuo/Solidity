# Solidity Contracts
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

### Reason 
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
