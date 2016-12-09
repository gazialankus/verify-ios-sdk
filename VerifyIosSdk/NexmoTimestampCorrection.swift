//
//  NexmoTimestampCorrection.swift
//  VerifyIosSdk
//
//  Created by Gazihan Alankus on 12/9/16.
//  Copyright © 2016 Nexmo Inc. All rights reserved.
//

import Foundation

public class NexmoTimestampCorrection {

    // server = device - deviceMinusServerSeconds
    static public var deviceMinusServerSeconds : UInt64 = 0;
    
    static public func serverToDevice(server: UInt64) -> UInt64 {
        return server + deviceMinusServerSeconds;
    }
    
    static public func deviceToServer(device: UInt64) -> UInt64 {
        return device - deviceMinusServerSeconds;
    }

}