//
//  ThemeSessionAPI.swift
//  
//
//  Created by Kaleb Cooper on 8/15/21.
//

import Combine
import Foundation
import SwiftUI

public protocol ThemeSessionAPI: SessionAPI {
    associatedtype BaseTheme = AppTheme
    
    //----------------------------------------------------------------
    // MARK: - Theme
    //----------------------------------------------------------------
    
    var appTheme: BaseTheme { get }
    
    
    //----------------------------------------------------------------
    // MARK: - Color Scheme
    //----------------------------------------------------------------
    
    var systemScheme: ColorScheme { get set }
    
    var appStorageSchemePreference: Int { get set }
    var userSchemePreference: AppColorScheme { get }
    
    /// Computed Property, based on `systemScheme` and `userSchemePreference`
    var scheme: ColorScheme { get }
    
    
    func setupSystemSchemeNotifications()
    func update(to theme: BaseTheme)
    func update(to scheme: AppColorScheme)
    
}
