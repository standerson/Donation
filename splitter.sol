contract splitter {
  
  address[] recipients = [0x3E05811dc66ce3B43dEe2b4B1F71b949a76F385d, 
    0xd750A20dA221fe5C3F77EdD53f848290F240610C, 
    0x121B4B6470c2A30369195b0878f354138C248B0C,
    0x761348d4193C699b7Cc208800dd2851Cd8f81cd7
    ];
    address owner = 0x3E05811dc66ce3B43dEe2b4B1F71b949a76F385d;


  event donation(address _from, uint _amount); 

  function splitter() public {
    
  }

  function getAddresses() constant returns (address[]) {
    return recipients;
  }

  /* 
  function changeAddress(uint _AddressLocation) onlyAddressOwner {

  }


  modifier onlyAddressOwner { if (msg.sender == recipients[_AddressLocation]) _ }
*/

  modifier onlyowner {if (msg.sender == owner) _ }

  function donate() public {
    uint SplitAmount = msg.value/4;
    recipients[0].send(SplitAmount);
    recipients[1].send(SplitAmount);
    recipients[2].send(SplitAmount);
    recipients[3].send(SplitAmount);

  }

  function kill() public onlyowner {
    suicide();
  }

} 