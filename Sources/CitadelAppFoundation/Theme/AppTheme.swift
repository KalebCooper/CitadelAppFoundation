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

    //----------------------------------------------------------------
    // MARK: - Brand Colors
    //----------------------------------------------------------------
    
    open var primaryBrand: AppColor {
        blue
    }
    
    open var secondaryBrand: AppColor {
        indigo
    }
    
    open var tertiaryBrand: AppColor {
        mint
    }
    
    //----------------------------------------------------------------
    // MARK: - Background Colors
    //----------------------------------------------------------------

    open var background: AppColor {
        AppColor(
            light: Color.white,
            dark: Color.black
        )
    }
    
    open var background2: AppColor {
        AppColor(
            light: Color(red: 239/255, green: 239/255, blue: 244/255, opacity: 1.0),
            dark: Color(red: 28/255, green: 28/255, blue: 30/255, opacity: 1.0)
        )
    }
    
    open var background3: AppColor {
        AppColor(
            light: Color.white,
            dark: Color(red: 44/255, green: 44/255, blue: 46/255, opacity: 1.0)
        )
    }
    
    open var groupedBackground: AppColor {
        AppColor(
            light: Color(red: 239/255, green: 239/255, blue: 244/255, opacity: 1.0),
            dark: Color.black
        )
    }
    
    open var groupedBackground2: AppColor {
        AppColor(
            light: Color.white,
            dark: Color(red: 28/255, green: 28/255, blue: 30/255, opacity: 1.0)
        )
    }
    
    open var groupedBackground3: AppColor {
        AppColor(
            light: Color(red: 239/255, green: 239/255, blue: 244/255, opacity: 1.0),
            dark: Color(red: 44/255, green: 44/255, blue: 46/255, opacity: 1.0)
        )
    }
    
    open var cardBackground: AppColor {
        background3
    }
    
    //----------------------------------------------------------------
    // MARK: - Separator
    //----------------------------------------------------------------
    
    open var separator: AppColor {
        AppColor(
            light: Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.29),
            dark: Color(red: 84/255, green: 84/255, blue: 88/255, opacity: 0.65)
        )
    }
    
    open var separatorOpaque: AppColor {
        AppColor(
            light: Color(red: 198/255, green: 198/255, blue: 200/255, opacity: 1.0),
            dark: Color(red: 56/255, green: 56/255, blue: 58/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Text Colors
    //----------------------------------------------------------------
    
    open var text: AppColor {
        AppColor(
            light: Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open var text2: AppColor {
        AppColor(
            light: Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.6),
            dark: Color(red: 235/255, green: 235/255, blue: 245/255, opacity: 0.6)
        )
    }
    
    open var text3: AppColor {
        AppColor(
            light: Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.3),
            dark: Color(red: 235/255, green: 235/255, blue: 245/255, opacity: 0.3)
        )
    }
    
    open var text4: AppColor {
        AppColor(
            light: Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.18),
            dark: Color(red: 235/255, green: 235/255, blue: 245/255, opacity: 0.16)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Disabled
    //----------------------------------------------------------------
    
    open var disabled: AppColor {
        AppColor(
            light: Color(red: 117/255, green: 117/255, blue: 117/255, opacity: 1.0),
            dark: Color(red: 153/255, green: 153/255, blue: 153/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Button Colors
    //----------------------------------------------------------------
    
    open var button: AppColor {
        AppColor(
            light: Color.blue,
            dark: Color.blue
        )
    }
    
    open var button2: AppColor {
        AppColor(
            light: primaryBrand.light,
            dark: primaryBrand.dark
        )
    }
    
    open var disabledButton: AppColor {
        AppColor(
            light: Color(red: 116/255, green: 116/255, blue: 128/255, opacity: 0.08),
            dark: Color(red: 116/255, green: 116/255, blue: 128/255, opacity: 0.18)
        )
    }
    
    open var disabledButtonText: AppColor {
        text3
    }
    
    //----------------------------------------------------------------
    // MARK: - Shadow Colors
    //----------------------------------------------------------------
    
    open var shadow: AppColor {
        AppColor(
            light: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.3),
            dark: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.3)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Colors
    //----------------------------------------------------------------
    
    open var blue: AppColor {
        AppColor(
            light: Color(red: 0/255, green: 122/255, blue: 155/255, opacity: 1.0),
            dark: Color(red: 10/255, green: 132/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open var brown: AppColor {
        AppColor(
            light: Color(red: 162/255, green: 132/255, blue: 94/255, opacity: 1.0),
            dark: Color(red: 172/255, green: 142/255, blue: 104/255, opacity: 1.0)
        )
    }
    
    open var cyan: AppColor {
        AppColor(
            light: Color(red: 50/255, green: 173/255, blue: 230/255, opacity: 1.0),
            dark: Color(red: 100/255, green: 210/255, blue: 255/255, opacity: 1.0)
        )
    }
    
    open var green: AppColor {
        AppColor(
            light: Color(red: 52/255, green: 199/255, blue: 89/255, opacity: 1.0),
            dark: Color(red: 48/255, green: 209/255, blue: 88/255, opacity: 1.0)
        )
    }
    
    open var indigo: AppColor {
        AppColor(
            light: Color(red: 88/255, green: 86/255, blue: 214/255, opacity: 1.0),
            dark: Color(red: 94/255, green: 92/255, blue: 230/255, opacity: 1.0)
        )
    }
    
    open var mint: AppColor {
        AppColor(
            light: Color(red: 0/255, green: 199/255, blue: 190/255, opacity: 1.0),
            dark: Color(red: 102/255, green: 212/255, blue: 207/255, opacity: 1.0)
        )
    }
    
    open var orange: AppColor {
        AppColor(
            light: Color(red: 255/255, green: 149/255, blue: 0/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 159/255, blue: 10/255, opacity: 1.0)
        )
    }
    
    open var pink: AppColor {
        AppColor(
            light: Color(red: 255/255, green: 45/255, blue: 85/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 55/255, blue: 95/255, opacity: 1.0)
        )
    }
    
    open var purple: AppColor {
        AppColor(
            light: Color(red: 175/255, green: 82/255, blue: 222/255, opacity: 1.0),
            dark: Color(red: 191/255, green: 90/255, blue: 242/255, opacity: 1.0)
        )
    }
    
    open var red: AppColor {
        AppColor(
            light: Color(red: 255/255, green: 59/255, blue: 48/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 69/255, blue: 58/255, opacity: 1.0)
        )
    }
    
    open var teal: AppColor {
        AppColor(
            light: Color(red: 48/255, green: 176/255, blue: 199/255, opacity: 1.0),
            dark: Color(red: 64/255, green: 200/255, blue: 224/255, opacity: 1.0)
        )
    }
    
    open var yellow: AppColor {
        AppColor(
            light: Color(red: 255/255, green: 204/255, blue: 0/255, opacity: 1.0),
            dark: Color(red: 255/255, green: 214/255, blue: 10/255, opacity: 1.0)
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Gray
    //----------------------------------------------------------------
    
    open var gray: AppColor {
        AppColor(
            light: Color(red: 142/255, green: 142/255, blue: 147/255, opacity: 1.0),
            dark: Color(red: 142/255, green: 142/255, blue: 147/255, opacity: 1.0)
        )
    }
    
    open var gray2: AppColor {
        AppColor(
            light: Color(red: 174/255, green: 174/255, blue: 178/255, opacity: 1.0),
            dark: Color(red: 99/255, green: 99/255, blue: 102/255, opacity: 1.0)
        )
    }
    
    open var gray3: AppColor {
        AppColor(
            light: Color(red: 199/255, green: 199/255, blue: 204/255, opacity: 1.0),
            dark: Color(red: 72/255, green: 72/255, blue: 74/255, opacity: 1.0)
        )
    }
    
    open var gray4: AppColor {
        AppColor(
            light: Color(red: 209/255, green: 209/255, blue: 214/255, opacity: 1.0),
            dark: Color(red: 58/255, green: 58/255, blue: 60/255, opacity: 1.0)
        )
    }
    
    open var gray5: AppColor {
        AppColor(
            light: Color(red: 229/255, green: 229/255, blue: 234/255, opacity: 1.0),
            dark: Color(red: 44/255, green: 44/255, blue: 46/255, opacity: 1.0)
        )
    }
    
    open var gray6: AppColor {
        AppColor(
            light: Color(red: 242/255, green: 242/255, blue: 247/255, opacity: 1.0),
            dark: Color(red: 28/255, green: 28/255, blue: 30/255, opacity: 1.0)
        )
    }
    
    
    public init() {
        
    }
}
