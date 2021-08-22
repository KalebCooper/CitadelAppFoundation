//
//  AppThemeDark.swift
//  
//
//  Created by Kaleb Cooper on 8/21/21.
//

import SwiftUI

/// Injected into `ThemeSession` to allow for pushing out across app
/// Contains base color definitions for things like:
/// background, primaryColor, secondaryColor, textColor, etc.
open class AppThemeDark: AppTheme {
    
    //----------------------------------------------------------------
    // MARK: - Brand Colors
    //----------------------------------------------------------------
    
    open override var primaryBrand: AppColor {
        blue
    }
    
    open override var secondaryBrand: AppColor {
        indigo
    }
    
    open override var tertiaryBrand: AppColor {
        mint
    }
    
    //----------------------------------------------------------------
    // MARK: - Background Colors
    //----------------------------------------------------------------
    
    open override var background: AppColor {
        AppColor(
            light: super.background.dark,
            dark: super.background.dark
        )
    }
    
    open override var background2: AppColor {
        AppColor(
            light: super.background2.dark,
            dark: super.background2.dark
        )
    }
    
    open override var background3: AppColor {
        AppColor(
            light: super.background3.dark,
            dark: super.background3.dark
        )
    }
    
    open override var groupedBackground: AppColor {
        AppColor(
            light: super.groupedBackground.dark,
            dark: super.groupedBackground.dark
        )
    }
    
    open override var groupedBackground2: AppColor {
        AppColor(
            light: super.groupedBackground2.dark,
            dark: super.groupedBackground2.dark
        )
    }
    
    open override var groupedBackground3: AppColor {
        AppColor(
            light: super.groupedBackground3.dark,
            dark: super.groupedBackground3.dark
        )
    }
    
    open override var cardBackground: AppColor {
        background3
    }
    
    //----------------------------------------------------------------
    // MARK: - Separator
    //----------------------------------------------------------------
    
    open override var separator: AppColor {
        AppColor(
            light: super.separator.dark,
            dark: super.separator.dark
        )
    }
    
    open override var separatorOpaque: AppColor {
        AppColor(
            light: super.separatorOpaque.dark,
            dark: super.separatorOpaque.dark
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Text Colors
    //----------------------------------------------------------------
    
    open override var text: AppColor {
        AppColor(
            light: super.text.dark,
            dark: super.text.dark
        )
    }
    
    open override var text2: AppColor {
        AppColor(
            light: super.text2.dark,
            dark: super.text2.dark
        )
    }
    
    open override var text3: AppColor {
        AppColor(
            light: super.text3.dark,
            dark: super.text3.dark
        )
    }
    
    open override var text4: AppColor {
        AppColor(
            light: super.text4.dark,
            dark: super.text4.dark
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Disabled
    //----------------------------------------------------------------
    
    open override var disabled: AppColor {
        AppColor(
            light: super.disabled.dark,
            dark: super.disabled.dark
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Button Colors
    //----------------------------------------------------------------
    
    open override var button: AppColor {
        AppColor(
            light: super.button.dark,
            dark: super.button.dark
        )
    }
    
    open override var button2: AppColor {
        AppColor(
            light: super.button2.dark,
            dark: super.button2.dark
        )
    }
    
    open override var disabledButton: AppColor {
        AppColor(
            light: super.disabledButton.dark,
            dark: super.disabledButton.dark
        )
    }
    
    open override var disabledButtonText: AppColor {
        text3
    }
    
    //----------------------------------------------------------------
    // MARK: - Shadow Colors
    //----------------------------------------------------------------
    
    open override var shadow: AppColor {
        AppColor(
            light: super.shadow.dark,
            dark: super.shadow.dark
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Colors
    //----------------------------------------------------------------
    
    open override var blue: AppColor {
        AppColor(
            light: super.blue.dark,
            dark: super.blue.dark
        )
    }
    
    open override var brown: AppColor {
        AppColor(
            light: super.brown.dark,
            dark: super.brown.dark
        )
    }
    
    open override var cyan: AppColor {
        AppColor(
            light: super.cyan.dark,
            dark: super.cyan.dark
        )
    }
    
    open override var green: AppColor {
        AppColor(
            light: super.green.dark,
            dark: super.green.dark
        )
    }
    
    open override var indigo: AppColor {
        AppColor(
            light: super.indigo.dark,
            dark: super.indigo.dark
        )
    }
    
    open override var mint: AppColor {
        AppColor(
            light: super.mint.dark,
            dark: super.mint.dark
        )
    }
    
    open override var orange: AppColor {
        AppColor(
            light: super.orange.dark,
            dark: super.orange.dark
        )
    }
    
    open override var pink: AppColor {
        AppColor(
            light: super.pink.dark,
            dark: super.pink.dark
        )
    }
    
    open override var purple: AppColor {
        AppColor(
            light: super.purple.dark,
            dark: super.purple.dark
        )
    }
    
    open override var red: AppColor {
        AppColor(
            light: super.red.dark,
            dark: super.red.dark
        )
    }
    
    open override var teal: AppColor {
        AppColor(
            light: super.teal.dark,
            dark: super.teal.dark
        )
    }
    
    open override var yellow: AppColor {
        AppColor(
            light: super.yellow.dark,
            dark: super.yellow.dark
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Gray
    //----------------------------------------------------------------
    
    open override var gray: AppColor {
        AppColor(
            light: super.gray.dark,
            dark: super.gray.dark
        )
    }
    
    open override var gray2: AppColor {
        AppColor(
            light: super.gray2.dark,
            dark: super.gray2.dark
        )
    }
    
    open override var gray3: AppColor {
        AppColor(
            light: super.gray3.dark,
            dark: super.gray3.dark
        )
    }
    
    open override var gray4: AppColor {
        AppColor(
            light: super.gray4.dark,
            dark: super.gray4.dark
        )
    }
    
    open override var gray5: AppColor {
        AppColor(
            light: super.gray5.dark,
            dark: super.gray5.dark
        )
    }
    
    open override var gray6: AppColor {
        AppColor(
            light: super.gray6.dark,
            dark: super.gray6.dark
        )
    }
    
    
    public override init() {
        
    }
}
