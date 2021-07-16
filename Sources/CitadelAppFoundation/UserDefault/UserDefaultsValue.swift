//
//  UserDefaultsValue.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

import Foundation

public enum UserDefaultsValue {
    case bool(_ value: Bool)
    case date(_ value: Date)
    case dictionary(_ value: [String: Any])
    case double(_ value: Double)
    case empty
    case integer(_ value: Int)
    case float(_ value: Float)
    case string(_ value: String)
}
