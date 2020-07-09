pragma solidity ^0.5.8;

contract dataTypes {
    
   uint public numberFromHex = 0xA3F; // is 2623
   uint public arbiteryPrecision = ( 2 / 5 + 1) * 10; // (0.4 + 1) * 10 = 1.4*10 = 14
   string public textAsHex = "\x4b\x69\x6e\x67\x73\x6c\x61\x6e\x64"; // Kingsland
   string public textAsUnicode = "\u004b\u0069\u006e\u0067\u0073\u006c\u0061\u006e\u0064"; // Kingsland
   enum Answer {
       Yes, 
       No, 
       Maybe
   }
   Answer public decision = Answer.Yes; // 0
 
}