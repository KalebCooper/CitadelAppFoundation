//
//  ViewThemeable.swift
//  
//
//  Created by Kaleb Cooper on 8/27/21.
//

import SwiftUI

public protocol ViewThemeable {
    associatedtype ThemeSession: ThemeSessionAPI
    var themeSession: ThemeSession { get }
    var envScheme: ColorScheme { get }
}
