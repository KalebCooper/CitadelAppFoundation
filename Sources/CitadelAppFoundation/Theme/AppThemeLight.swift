//
//  AppThemeLight.swift
//
//
//  Created by Kaleb Cooper on 8/21/21.
//

import SwiftUI

/// Injected into `ThemeSession` to allow for pushing out across app
/// Contains base color definitions for things like:
/// background, primaryColor, secondaryColor, textColor, etc.
open class AppThemeLight: AppTheme {
    
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
            light: super.background.light,
            dark: super.background.light
        )
    }
    
    open override var background2: AppColor {
        AppColor(
            light: super.background2.light,
            dark: super.background2.light
        )
    }
    
    open override var background3: AppColor {
        AppColor(
            light: super.background3.light,
            dark: super.background3.light
        )
    }
    
    open override var groupedBackground: AppColor {
        AppColor(
            light: super.groupedBackground.light,
            dark: super.groupedBackground.light
        )
    }
    
    open override var groupedBackground2: AppColor {
        AppColor(
            light: super.groupedBackground2.light,
            dark: super.groupedBackground2.light
        )
    }
    
    open override var groupedBackground3: AppColor {
        AppColor(
            light: super.groupedBackground3.light,
            dark: super.groupedBackground3.light
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
            light: super.separator.light,
            dark: super.separator.light
        )
    }
    
    open override var separatorOpaque: AppColor {
        AppColor(
            light: super.separatorOpaque.light,
            dark: super.separatorOpaque.light
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Text Colors
    //----------------------------------------------------------------
    
    open override var text: AppColor {
        AppColor(
            light: super.text.light,
            dark: super.text.light
        )
    }
    
    open override var text2: AppColor {
        AppColor(
            light: super.text2.light,
            dark: super.text2.light
        )
    }
    
    open override var text3: AppColor {
        AppColor(
            light: super.text3.light,
            dark: super.text3.light
        )
    }
    
    open override var text4: AppColor {
        AppColor(
            light: super.text4.light,
            dark: super.text4.light
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Disabled
    //----------------------------------------------------------------
    
    open override var disabled: AppColor {
        AppColor(
            light: super.disabled.light,
            dark: super.disabled.light
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Button Colors
    //----------------------------------------------------------------
    
    open override var button: AppColor {
        AppColor(
            light: super.button.light,
            dark: super.button.light
        )
    }
    
    open override var button2: AppColor {
        AppColor(
            light: super.button2.light,
            dark: super.button2.light
        )
    }
    
    open override var disabledButton: AppColor {
        AppColor(
            light: super.disabledButton.light,
            dark: super.disabledButton.light
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
            light: super.shadow.light,
            dark: super.shadow.light
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Colors
    //----------------------------------------------------------------
    
    open override var blue: AppColor {
        AppColor(
            light: super.blue.light,
            dark: super.blue.light
        )
    }
    
    open override var brown: AppColor {
        AppColor(
            light: super.brown.light,
            dark: super.brown.light
        )
    }
    
    open override var cyan: AppColor {
        AppColor(
            light: super.cyan.light,
            dark: super.cyan.light
        )
    }
    
    open override var green: AppColor {
        AppColor(
            light: super.green.light,
            dark: super.green.light
        )
    }
    
    open override var indigo: AppColor {
        AppColor(
            light: super.indigo.light,
            dark: super.indigo.light
        )
    }
    
    open override var mint: AppColor {
        AppColor(
            light: super.mint.light,
            dark: super.mint.light
        )
    }
    
    open override var orange: AppColor {
        AppColor(
            light: super.orange.light,
            dark: super.orange.light
        )
    }
    
    open override var pink: AppColor {
        AppColor(
            light: super.pink.light,
            dark: super.pink.light
        )
    }
    
    open override var purple: AppColor {
        AppColor(
            light: super.purple.light,
            dark: super.purple.light
        )
    }
    
    open override var red: AppColor {
        AppColor(
            light: super.red.light,
            dark: super.red.light
        )
    }
    
    open override var teal: AppColor {
        AppColor(
            light: super.teal.light,
            dark: super.teal.light
        )
    }
    
    open override var yellow: AppColor {
        AppColor(
            light: super.yellow.light,
            dark: super.yellow.light
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - System Gray
    //----------------------------------------------------------------
    
    open override var gray: AppColor {
        AppColor(
            light: super.gray.light,
            dark: super.gray.light
        )
    }
    
    open override var gray2: AppColor {
        AppColor(
            light: super.gray2.light,
            dark: super.gray2.light
        )
    }
    
    open override var gray3: AppColor {
        AppColor(
            light: super.gray3.light,
            dark: super.gray3.light
        )
    }
    
    open override var gray4: AppColor {
        AppColor(
            light: super.gray4.light,
            dark: super.gray4.light
        )
    }
    
    open override var gray5: AppColor {
        AppColor(
            light: super.gray5.light,
            dark: super.gray5.light
        )
    }
    
    open override var gray6: AppColor {
        AppColor(
            light: super.gray6.light,
            dark: super.gray6.light
        )
    }
    
    
    public override init() {
        
    }
}
