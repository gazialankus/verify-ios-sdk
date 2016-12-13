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
    static public var deviceMinusServerSeconds : Int64 = 0;
    
    static public func serverToDevice(server: Int64) -> Int64 {
        return server + deviceMinusServerSeconds;
    }
    
    static public func deviceToServer(device: Int64) -> Int64 {
        return device - deviceMinusServerSeconds;
    }

}