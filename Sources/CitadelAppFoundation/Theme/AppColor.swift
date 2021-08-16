//
//  AppColor.swift
//  
//
//  Created by Kaleb Cooper on 8/14/21.
//

import SwiftUI

public struct AppColor {
    var dark: Color
    var light: Color
    
    func color(in scheme: ColorScheme = .light) -> Color {
        switch scheme {
        case .dark:
            return dark
        case .light:
            return light
        default:
            return light
        }
    }
}
