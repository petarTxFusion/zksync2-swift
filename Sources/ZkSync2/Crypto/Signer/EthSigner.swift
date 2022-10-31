//
//  EthSigner.swift
//  ZkSync2
//
//  Created by Maxim Makhun on 7/23/22.
//

import Foundation
import web3swift

public protocol EthSigner {
    
    var address: String { get }
    
    var domain: EIP712Domain { get }
    
    func signTypedData<S: Structurable>(_ domain: EIP712Domain,
                                        typedData: S) -> String
    
    func verifyTypedData<S: Structurable>(_ domain: EIP712Domain,
                                          typedData: S,
                                          signature: String) -> Bool
    
    func signMessage(_ message: Data) -> String
    
    func signMessage(_ message: Data, addPrefix: Bool) -> String
    
    func verifySignature(_ signature: String, message: Data) -> Bool
    
    func verifySignature(_ signature: String,
                         message: Data,
                         prefixed: Bool) -> Bool
}
