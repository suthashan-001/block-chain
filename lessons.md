# Lessons

    For String or any mapping datatype there are two ways of storing, one on the block chain using the 
    keyword 'Storage' and one as temp during the function call 'memory' 

    // memory -> temp storage for the duration of the function

    // storage -> stored on Etherum block chain, when you want it to be part of the contracts state

    contract state refers to the data that is stored within the contract itself.
    This data can include variables, mappings, arrays, and structs that hold information relevant to the contract's functionality.


# Payable function 

     a payable function is a special type of function that can receive Ether (the cryptocurrency used on the Ethereum network). 
    This is crucial for smart contracts that need to handle financial transactions.


**require** 

    require Keyword: In Solidity, require is a built-in function that is used to ensure specific conditions are met before
    executing further code. If the condition within require evaluates to false, the transaction is reverted. 
    This means that any changes to the state of the blockchain (like transferring Ether or updating variables)
    made by the transaction are undone, and gas used up to that point is consumed. 
    The transaction is essentially cancelled, but it still appears on the blockchain as a failed transaction.

# Concept of **Reverting**

     "reverting" is a critical concept. It refers to the mechanism by which a transaction or function call in a smart contract is undone, 
     typically due to an error or a specific condition not being met.


     Here are the key aspects of reverting in smart contracts:

1. Transaction Atomicity
Atomicity: Transactions in blockchain are atomic, meaning they either complete entirely or not at all. There's no in-between state.
Revert Mechanism: If any part of a transaction fails or is triggered to fail (like via a require or assert statement), the entire transaction is reverted.

2. State Reversion
Unchanged State: When a transaction is reverted, any changes made to the state of the smart contract during that transaction are undone. This includes changes to variables, token transfers, or contract creation.
Gas Fees: Even though the state changes are undone, the gas used up until the point of reversion is still consumed and paid by the transaction initiator.

3. Error Handling
Explicit Reversion: Developers use require and assert functions in Solidity to explicitly revert a transaction under certain conditions. For example, checking inputs, validating states, or ensuring invariants.
Differences: require is used for checking user inputs and conditions, while assert is generally used for checking invariants and internal errors.

4. Gas Refunding
Refund on Revert: If a transaction reverts, any unused gas is refunded to the user. However, the gas used up until the point of error is not refunded.

5. Security Implications
Protection Against Attacks: Reverting helps protect against certain types of attacks, such as reentrancy attacks, by ensuring that transactions either complete fully or have no effect at all.
Error Messages: Providing informative error messages in require statements can aid in debugging and provide feedback, but it's a trade-off with gas cost, as these messages increase the transaction size.

6. Event Logs
Log Reversion: Event logs emitted during the transaction are also reverted, ensuring that there's no trace of the failed transaction in the contract's event log. However, the transaction itself is still recorded on the blockchain as a failed transaction.
In summary, reverting is a fundamental safety mechanism in smart contracts that ensures the integrity of the blockchain. It ensures that either all operations in a transaction are successfully completed, or none are, maintaining the consistency and predictability of the contract's state and the blockchain as a whole.
