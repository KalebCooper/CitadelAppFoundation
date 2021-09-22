//
//  ThemeUserDefaults.swift
//  
//
//  Created by Kaleb Cooper on 9/1/21.
//

import Foundation

public enum ThemeUserDefaults: UserDefaultsKeyable {
    
    //----------------------------------------------------------------
    // MARK: - Permissions
    //----------------------------------------------------------------
    
    ///`User Color Scheme Preferences - Int` value
    case userColorSchemePreference
    
    
    //----------------------------------------------------------------
    // MARK: - UserDefaultsKeyable
    //----------------------------------------------------------------
    
    public var key: String {
        switch self {
        
        case .userColorSchemePreference:
            return "user-color-scheme-preference"
        }
    }
}
