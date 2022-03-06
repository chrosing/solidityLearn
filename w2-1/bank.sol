// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Bank {
     struct saveBank {
        //充值金额
        uint256 amount;
        //充值地址
        address bandAddr;
    }

    mapping(address => saveBank[]) public bankInfo;

    mapping(address => uint256) public total;

    // 转账
    receive() external payable {
        bankInfo[msg.sender].push(saveBank({amount: msg.value, bandAddr: msg.sender}));
        total[msg.sender] += msg.value;
    }

    // 查询合约的地址余额
    function getBalanceOfContract() public view returns (uint256) {
        return address(this).balance;
    }

    // 查询每个地址的信息
    function getAllAddreeValue(address _addr) public view returns(saveBank[] memory){
        return bankInfo[_addr];
    }

    // 提币
    function withDraw() public {
        uint256 oldBalance = address(this).balance;
        total[msg.sender] = 0;
        (bool successc, ) = msg.sender.call{value: oldBalance}("");
        require(successc, "withdraw transfer failed");
    }
}