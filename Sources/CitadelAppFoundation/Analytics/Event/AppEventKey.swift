//
//  AppEventKey.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

public struct AppEventKey: UserDefaultsKeyable {
    public var key: String
    
    public init(_ key: String) {
        self.key = key
    }
}
