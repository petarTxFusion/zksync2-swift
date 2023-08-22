//
//  IL2Bridge.swift
//  ZkSync2
//
//  Created by Maxim Makhun on 9/3/22.
//

import Foundation
#if canImport(web3swift)
import web3swift
#else
import web3swift_zksync2
#endif

extension Web3.Utils {
    
    static var IL2Bridge = """
[
{
    "anonymous": false,
    "inputs": [
        {
            "indexed": true,
            "internalType": "address",
            "name": "l1Sender",
            "type": "address"
        },
        {
            "indexed": true,
            "internalType": "address",
            "name": "l2Receiver",
            "type": "address"
        },
        {
            "indexed": true,
            "internalType": "address",
            "name": "l2Token",
            "type": "address"
        },
        {
            "indexed": false,
            "internalType": "uint256",
            "name": "amount",
            "type": "uint256"
        }
    ],
    "name": "FinalizeDeposit",
    "type": "event"
},
{
    "anonymous": false,
    "inputs": [
        {
            "indexed": true,
            "internalType": "address",
            "name": "l2Sender",
            "type": "address"
        },
        {
            "indexed": true,
            "internalType": "address",
            "name": "l1Receiver",
            "type": "address"
        },
        {
            "indexed": true,
            "internalType": "address",
            "name": "l2Token",
            "type": "address"
        },
        {
            "indexed": false,
            "internalType": "uint256",
            "name": "amount",
            "type": "uint256"
        }
    ],
    "name": "WithdrawalInitiated",
    "type": "event"
},
{
    "inputs": [
        {
            "internalType": "address",
            "name": "_l1Sender",
            "type": "address"
        },
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
        },
        {
            "internalType": "bytes",
            "name": "_data",
            "type": "bytes"
        }
    ],
    "name": "finalizeDeposit",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
},
{
    "inputs": [],
    "name": "l1Bridge",
    "outputs": [
        {
            "internalType": "address",
            "name": "",
            "type": "address"
        }
    ],
    "stateMutability": "view",
    "type": "function"
},
{
    "inputs": [
        {
            "internalType": "address",
            "name": "_l2Token",
            "type": "address"
        }
    ],
    "name": "l1TokenAddress",
    "outputs": [
        {
            "internalType": "address",
            "name": "",
            "type": "address"
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
},
{
    "inputs": [
        {
            "internalType": "address",
            "name": "_l1Receiver",
            "type": "address"
        },
        {
            "internalType": "address",
            "name": "_l2Token",
            "type": "address"
        },
        {
            "internalType": "uint256",
            "name": "_amount",
            "type": "uint256"
        }
    ],
    "name": "withdraw",
    "outputs": [],
    "stateMutability": "nonpayable",
    "type": "function"
}
]
"""
}
