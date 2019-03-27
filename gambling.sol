pragma solidity ^0.5.0;

contract gambling
{
    
    uint nonce=0;
    function bet(uint number) public returns (bool,uint){
            uint randomnumber = uint(keccak256(abi.encodePacked(now, msg.sender, nonce))) % 10;
            nonce++;
            
            if (number == randomnumber){
                return (true,randomnumber);
            }
            else
            {
                return (false,randomnumber);
            }
    }
}
