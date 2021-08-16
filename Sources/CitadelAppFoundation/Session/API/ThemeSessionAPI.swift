//
//  ThemeSessionAPI.swift
//  
//
//  Created by Kaleb Cooper on 8/15/21.
//

import Combine
import Foundation

public protocol ThemeSessionAPI: SessionAPI {
    associatedtype BaseTheme = AppTheme
    
    var appTheme: BaseTheme { get }
    func update(to theme: BaseTheme)
}
