//
//  AppLocale.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation
open class AppLocale {
    /// get string for key
    /// allow modifier like get with capital, all caps, all lowercase, max length, etc
    public static func get(_ localizable: Localizable, _ comment: String = "") -> String {
        return NSLocalizedString(localizable.titleKey, comment: comment)
    }
    
    public static func getDescription(
        _ localizable: DescriptiveLocalizable,
        _ comment: String = ""
    ) -> (title: String, description: String) {
        return (
            title: NSLocalizedString(localizable.titleKey, comment: comment),
            description: NSLocalizedString(localizable.descriptionKey, comment: comment)
        )
    }
    
    public static func getAccessibleDescription(
        _ localizable: AccessibleLocalizable,
        _ comment: String = ""
    ) -> (title: String, accessibilityDescription: String) {
        return (
            title: NSLocalizedString(localizable.titleKey, comment: comment),
            accessibilityDescription: NSLocalizedString(localizable.accessibleDescriptionKey, comment: comment)
        )
    }
    
    public static func getAll<T: DescriptiveLocalizable & AccessibleLocalizable>(
        _ localizable: T,
        _ comment: String = ""
    ) -> (title: String, description: String, accessibilityDescription: String) {
        return (
            title: NSLocalizedString(localizable.titleKey, comment: comment),
            description: NSLocalizedString(localizable.descriptionKey, comment: comment),
            accessibilityDescription: NSLocalizedString(localizable.accessibleDescriptionKey, comment: comment)
        )
    }
}
