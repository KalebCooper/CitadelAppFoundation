//
//  AppUserDefaults.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

import Foundation

open class AppUserDefaults {
    
    private static let userDefaults: UserDefaults = UserDefaults.standard
    
    public static func save(
        keyable: UserDefaultsKeyable,
        value: UserDefaultsValue
    ) {
        switch value {

        case .string(let value):
            userDefaults.setValue(value, forKey: keyable.key)
        case .double(let value):
            userDefaults.setValue(value, forKey: keyable.key)
        case .bool(let value):
            userDefaults.setValue(value, forKey: keyable.key)
        case .int(let value):
            userDefaults.setValue(value, forKey: keyable.key)
        }
    }
    
    public static func get<T: UserDefaultsKeyable, Type: Any>(keyable: T) -> Type? {
        return userDefaults.object(forKey: keyable.key) as? Type
    }
    
}
