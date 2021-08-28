//
//  ViewThemeable.swift
//  
//
//  Created by Kaleb Cooper on 8/27/21.
//

import SwiftUI

public protocol ViewThemeable {
    associatedtype Session: ThemeSessionAPI
    var themeSession: Session { get }
    var envScheme: ColorScheme { get }
}
