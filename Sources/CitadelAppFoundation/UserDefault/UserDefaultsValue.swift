//
//  UserDefaultsValue.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

import Foundation

public protocol UserDefaultsRetrievable {
//    var type: UserDefaultsType { get }
}



public enum UserDefaultsValue: UserDefaultsRetrievable {
    
    case string(_ value: String?)
    case double(_ value: Double?)
    case bool(_ value: Bool?)
    case int(_ value: Int?)
    
//    public var type: UserDefaultsType {
//        switch self {
//
//        case .string:
//            return .string
//        case .double:
//            return .double
//        case .bool:
//            return .bool
//        case .int:
//            return .int
//        }
//    }
}
