
# Project Title  
Bea's Vault Smart Contract  

## Simple Overview  
BeaVault is a Solidity-based smart contract that functions as a vault system for securely depositing, withdrawing, and tracking funds.  

---  

## Description  
The BeaVault contract enables users to interact with a decentralized vault. It provides features for depositing funds, withdrawing amounts if sufficient balance exists, and viewing the vault's total balance. Additionally, it logs all transactions for transparency using events. This contract is simple, efficient, and designed to demonstrate Solidity error handling with `require()`, `assert()`, and `revert()`.  

---  


### Executing the Program  

#### Deployment  
1. Open the contract file `BeasVault.sol` in Remix or your preferred IDE.  
2. Ensure your environment is set to use the Solidity version `^0.8.26`.  
3. Compile the contract.  
4. Deploy the contract using a test network or a local blockchain.

#### Using the Contract  
1. **Deposit Funds**:  
   - Call the `deposit()` function with a positive integer value.  
2. **Withdraw Funds**:  
   - Call the `withdraw()` function with a value. Ensure sufficient funds exist.  
3. **Check Balance**:  
   - Call the `getVaultBalance()` function to view the current vault balance.  


---  

## Help  
- **Common Issues**:  
  - Ensure you deploy the contract on the correct blockchain environment.  
  - Only positive values are accepted for deposits and withdrawals.  

- **Troubleshooting**:  
  - For insufficient balance errors, verify the total vault balance using `getVaultBalance()`.  
  - Use Remix debugger for any unexpected errors.  

---   

## License  
This project is licensed under the MIT License - see the `SPDX-License-Identifier` header in the contract code for details.  

---  
