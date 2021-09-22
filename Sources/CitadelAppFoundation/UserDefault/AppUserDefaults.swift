//
//  AppUserDefaults.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

import Combine
import Foundation

open class AppUserDefaults {
    
    public static let app = AppUserDefaults()
    private init() { }
    private let userDefaults: UserDefaults = UserDefaults.standard
    
    public func set(
        keyable: UserDefaultsKeyable,
        value: UserDefaultsValue
    ) {
        switch value {
        case .bool(let bool):
            userDefaults.setValue(bool, forKey: keyable.key)
        case .date(let date):
            userDefaults.setValue(date, forKey: keyable.key)
        case .dictionary(let dictionary):
            userDefaults.setValue(dictionary, forKey: keyable.key)
        case .double(let double):
            userDefaults.setValue(double, forKey: keyable.key)
        case .empty:
            userDefaults.setValue(nil, forKey: keyable.key)
        case .integer(let integer):
            userDefaults.setValue(integer, forKey: keyable.key)
        case .float(let float):
            userDefaults.setValue(float, forKey: keyable.key)
        case .string(let string):
            userDefaults.setValue(string, forKey: keyable.key)
        }
    }
    
    public func get<Type: Any>(
        keyable: UserDefaultsKeyable
    ) -> Type? {
        return userDefaults.object(forKey: keyable.key) as? Type
    }
    
    public func remove(keyable: UserDefaultsKeyable) {
        userDefaults.removeObject(forKey: keyable.key)
    }
}

//----------------------------------------------------------------
// MARK: - Custom Objects
//----------------------------------------------------------------

extension AppUserDefaults {
    public func get<Type: Any & Codable>(
        keyable: UserDefaultsKeyable
    ) -> Type? {
        
        guard let data = userDefaults.data(forKey: keyable.key) else {
            return nil
        }
        
        do {
            let decoder = JSONDecoder()
            let object = try decoder.decode(Type.self, from: data)
            return object
        } catch {
            return nil
        }
    }
    
    public func set<T: Codable>(
        keyable: UserDefaultsKeyable,
        value: T,
        success: ((Bool) -> ())?
    ) {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(value)
            userDefaults.setValue(data, forKey: keyable.key)
            success?(true)
        } catch {
            success?(false)
        }
    }
}
