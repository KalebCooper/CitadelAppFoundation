//
//  AppColorScheme.swift
//  
//
//  Created by Kaleb Cooper on 9/1/21.
//

import Foundation
import SwiftUI

public enum AppColorScheme {
    case system
    case light
    case dark
    
    var asColorScheme: ColorScheme? {
        switch self {
        case .system:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
    
    #if !os(macOS)
    
    var asUIUserInterfaceStyle: UIUserInterfaceStyle {
        switch self {
        case .system:
            return .unspecified
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
    
    public static func getSystemScheme() -> ColorScheme {
        let scheme = (UITraitCollection.current.userInterfaceStyle == .dark)
            ? ColorScheme.dark
            : ColorScheme.light
        return scheme
    }
    #endif
}
