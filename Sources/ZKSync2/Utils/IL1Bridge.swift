//
//  IL1Bridge.swift
//  ZKSync2
//
//  Created by Maxim Makhun on 9/3/22.
//

import Foundation
import web3swift

extension Web3.Utils {
    
    static var IL1Bridge = """
[
{
  "_format": "hh-sol-artifact-1",
  "contractName": "IL1Bridge",
  "sourceName": "cache/solpp-generated-contracts/bridge/interfaces/IL1Bridge.sol",
  "abi": [
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "l1Token",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "ClaimedFailedDeposit",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "l1Token",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "DepositInitiated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "l1Token",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "WithdrawalFinalized",
      "type": "event"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_depositSender",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "_l1Token",
          "type": "address"
        },
        {
          "internalType": "bytes32",
          "name": "_l2TxHash",
          "type": "bytes32"
        },
        {
          "internalType": "uint256",
          "name": "_l2BlockNumber",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_l2MessageIndex",
          "type": "uint256"
        },
        {
          "internalType": "bytes32[]",
          "name": "_merkleProof",
          "type": "bytes32[]"
        }
      ],
      "name": "claimFailedDeposit",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_l2Receiver",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "_l1Token",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "_amount",
          "type": "uint256"
        }
      ],
      "name": "deposit",
      "outputs": [
        {
          "internalType": "bytes32",
          "name": "txHash",
          "type": "bytes32"
        }
      ],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_l2BlockNumber",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_l2MessageIndex",
          "type": "uint256"
        },
        {
          "internalType": "bytes",
          "name": "_message",
          "type": "bytes"
        },
        {
          "internalType": "bytes32[]",
          "name": "_merkleProof",
          "type": "bytes32[]"
        }
      ],
      "name": "finalizeWithdrawal",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_l2BlockNumber",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_l2MessageIndex",
          "type": "uint256"
        }
      ],
      "name": "isWithdrawalFinalized",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_l1Token",
          "type": "address"
        }
      ],
      "name": "l2TokenAddress",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    }
  ],
  "bytecode": "0x",
  "deployedBytecode": "0x",
  "linkReferences": {},
  "deployedLinkReferences": {}
}
]
"""
}
