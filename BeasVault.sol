// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BeaVault {
    uint256 public totalValue; 

    // logs succesful deposits
    event DepositMade(address indexed depositor, uint256 amount);

    // logs succesful withdrwals
    event WithdrawalMade(address indexed withdrawer, uint256 amount);

    // function for deposit
    function deposit(uint256 value) public {
        // Ensure the deposit value is positive
        require(value > 0, "Hey Bea, deposit value must be greater than zero!");

        // Checks for overflow
        assert(totalValue + value > totalValue);

        // Update the total value
        totalValue += value;

        // Emit the deposit event
        emit DepositMade(msg.sender, value);
    }

    // function for widthraw
    function withdraw(uint256 value) public {
        // Ensure the withdrawal value is positive
        require(value > 0, "Hey Bea, withdrawal value must be greater than zero!");

        // Check if sufficient funds are available
        if (value > totalValue) {
            revert("Oops, Bea! Insufficient funds for this withdrawal.");
        }

        // Update the total value
        totalValue -= value;

        // Emit the withdrawal event
        emit WithdrawalMade(msg.sender, value);
    }

    // function to check the total balance in the vault
    function getVaultBalance() public view returns (uint256) {
        return totalValue; 
    }
}
