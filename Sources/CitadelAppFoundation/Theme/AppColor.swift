//
//  AppColor.swift
//  
//
//  Created by Kaleb Cooper on 8/14/21.
//

import SwiftUI

public struct AppColor {
    public var light: Color
    public var dark: Color
    
    public func color(in scheme: ColorScheme = .light) -> Color {
        switch scheme {
        case .light:
            return light
        case .dark:
            return dark
        default:
            return light
        }
    }
}
