//
//  AppThemeAccessible.swift
//  
//
//  Created by Kaleb Cooper on 8/16/21.
//

import SwiftUI

/// Injected into `ThemeSession` to allow for pushing out across app
/// Contains base color definitions for things like:
/// background, primaryColor, secondaryColor, textColor, etc.
open class AppThemeAccessible: AppTheme {
    
    //----------------------------------------------------------------
    // MARK: - System Colors
    //----------------------------------------------------------------
    
    open override var blue: AppColor {
        AppColor(
            light: Color(red: 0/255, green: 64/255, blue: 221/255, opacity: 1.0),
            dark: Color(red: 4/255, green: 156/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open override var brown: AppColor {
        AppColor(
            light: Color(red: 127/255, green: 101/255, blue: 69/255, opacity: 1.0),
            dark: Color(red: 181/255, green: 148/255, blue: 105/255, opacity: 1.0)
        )
    }
    
    open override var cyan: AppColor {
        AppColor(
            light: Color(red: 0/255, green: 113/255, blue: 164/255, opacity: 1.0),
            dark: Color(red: 112/255, green: 215/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open override var green: AppColor {
        AppColor(
            light: Color(red: 36/255, green: 138/255, blue: 161/255, opacity: 1.0),
            dark: Color(red: 48/255, green: 219/255, blue: 91/255, opacity: 1.0)
        )
    }
    
    open override var indigo: AppColor {
        AppColor(
            light: Color(red: 54/255, green: 52/255, blue: 163/255, opacity: 1.0),
            dark: Color(red: 125/255, green: 122/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open override var mint: AppColor {
        AppColor(
            light: Color(red: 12/255, green: 129/255, blue: 123/255, opacity: 1.0),
            dark: Color(red: 102/255, green: 212/255, blue: 207/255, opacity: 1.0)
        )
    }
    
    open override var orange: AppColor {
        AppColor(
            light: Color(red: 201/255, green: 52/255, blue: 0/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 179/255, blue: 64/255, opacity: 1.0)
        )
    }
    
    open override var pink: AppColor {
        AppColor(
            light: Color(red: 211/255, green: 15/255, blue: 69/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 100/255, blue: 130/255, opacity: 1.0)
        )
    }
    
    open override var purple: AppColor {
        AppColor(
            light: Color(red: 137/255, green: 68/255, blue: 171/255, opacity: 1.0),
            dark: Color(red: 218/255, green: 143/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open override var red: AppColor {
        AppColor(
            light: Color(red: 215/255, green: 0/255, blue: 21/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 105/255, blue: 97/255, opacity: 1.0)
        )
    }
    
    open override var teal: AppColor {
        AppColor(
            light: Color(red: 0/255, green: 130/255, blue: 153/255, opacity: 1.0),
            dark: Color(red: 93/255, green: 230/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open override var yellow: AppColor {
        AppColor(
            light: Color(red: 178/255, green: 80/255, blue: 0/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 212/255, blue: 38/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Gray
    //----------------------------------------------------------------
    
    open override var gray: AppColor {
        AppColor(
            light: Color(red: 108/255, green: 108/255, blue: 112/255, opacity: 1.0),
            dark: Color(red: 174/255, green: 174/255, blue: 178/255, opacity: 1.0)
        )
    }
    
    open override var gray2: AppColor {
        AppColor(
            light: Color(red: 142/255, green: 142/255, blue: 147/255, opacity: 1.0),
            dark: Color(red: 124/255, green: 124/255, blue: 128/255, opacity: 1.0)
        )
    }
    
    open override var gray3: AppColor {
        AppColor(
            light: Color(red: 174/255, green: 174/255, blue: 178/255, opacity: 1.0),
            dark: Color(red: 84/255, green: 84/255, blue: 86/255, opacity: 1.0)
        )
    }
    
    open override var gray4: AppColor {
        AppColor(
            light: Color(red: 188/255, green: 188/255, blue: 192/255, opacity: 1.0),
            dark: Color(red: 68/255, green: 68/255, blue: 70/255, opacity: 1.0)
        )
    }
    
    open override var gray5: AppColor {
        AppColor(
            light: Color(red: 216/255, green: 216/255, blue: 220/255, opacity: 1.0),
            dark: Color(red: 54/255, green: 54/255, blue: 56/255, opacity: 1.0)
        )
    }
    
    open override var gray6: AppColor {
        AppColor(
            light: Color(red: 235/255, green: 235/255, blue: 240/255, opacity: 1.0),
            dark: Color(red: 36/255, green: 36/255, blue: 38/255, opacity: 1.0)
        )
    }
    
    
    public override init() {
        
    }
}

