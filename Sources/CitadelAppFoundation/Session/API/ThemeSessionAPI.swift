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
    
    var appTheme: BaseTheme { get }
    var currentScheme: ColorScheme { get set }
    var userSchemeSelection: ColorScheme? { get }
    
//    func color(
    func update(to theme: BaseTheme)
    func update(to scheme: ColorScheme?)
}
