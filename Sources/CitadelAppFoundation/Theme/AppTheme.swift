//
//  AppTheme.swift
//  
//
//  Created by Kaleb Cooper on 8/14/21.
//

import SwiftUI

/// Injected into `ThemeSession` to allow for pushing out across app
/// Contains base color definitions for things like:
/// background, primaryColor, secondaryColor, textColor, etc.
open class AppTheme: ObservableObject {
    #warning("Need to reference Slym Figma file and set color values")
    //----------------------------------------------------------------
    // MARK: - Brand Colors
    //----------------------------------------------------------------
    
    open var primaryBrand: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open var secondaryBrand: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open var tertiaryBrand: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Background Colors
    //----------------------------------------------------------------

    open var primaryBackground: AppColor {
        AppColor(
            dark: Color.black,
            light: Color.white
        )
    }
    
    public var secondaryBackground: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 239/255, green: 239/255, blue: 244/255, opacity: 1.0)
        )
    }
    
    public var tertiaryBackground: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    public var modalBackground: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    public var cardBackground: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Text Colors
    //----------------------------------------------------------------
    
    public var primaryText: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    public var secondaryText: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    public var disabledText: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Button Colors
    //----------------------------------------------------------------
    
    public var primaryButton: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    public var secondaryButton: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    public var disabledButton: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Shadow Colors
    //----------------------------------------------------------------
    
    public var shadow: AppColor {
        AppColor(
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0),
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    public init() {
        
    }
}
