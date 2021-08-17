//
//  AppThemeElevated.swift
//  
//
//  Created by Kaleb Cooper on 8/16/21.
//

import SwiftUI

/// This is an alternative to the base `AppTheme` that uses "Pure Black" as the base background.
open class AppThemeElevated: AppTheme {
    open override var background: AppColor {
        AppColor(
            light: Color.white,
            dark: Color(red: 28/255, green: 28/255, blue: 30/255, opacity: 1.0)
        )
    }
    
    open override var background2: AppColor {
        AppColor(
            light: Color(red: 239/255, green: 239/255, blue: 244/255, opacity: 1.0),
            dark: Color(red: 44/255, green: 44/255, blue: 46/255, opacity: 1.0)
        )
    }
    
    open override var background3: AppColor {
        AppColor(
            light: Color.white,
            dark: Color(red: 58/255, green: 58/255, blue: 60/255, opacity: 1.0)
        )
    }
}
