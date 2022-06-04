//
//  AppLocale.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation


public protocol LocalizationStore {
    func get(_ localizable: Localizable) -> String
    func get(_ localizable: DescriptiveLocalizable) -> (title: String, description: String)
    func get(_ localizable: AccessibleLocalizable) -> (title: String, accessibilityDescription: String)
    func get(_ localizable: InclusiveLocalizable) -> (title: String, description: String, accessibilityDescription: String)
}

public class AppLocalizationStore: LocalizationStore {

    /// get string for key
    /// allow modifier like get with capital, all caps, all lowercase, max length, etc
    public func get(_ localizable: Localizable) -> String {
        return NSLocalizedString(localizable.titleKey, comment: localizable.comment)
    }
    
    public func get(_ localizable: DescriptiveLocalizable) -> (title: String, description: String) {
        return (
            title: NSLocalizedString(localizable.titleKey, comment: localizable.comment),
            description: NSLocalizedString(localizable.descriptionKey, comment: localizable.comment)
        )
    }

    public func get(_ localizable: AccessibleLocalizable) -> (title: String, accessibilityDescription: String) {
        return (
            title: NSLocalizedString(localizable.titleKey, comment: localizable.comment),
            accessibilityDescription: NSLocalizedString(localizable.accessibleDescriptionKey, comment: localizable.comment)
        )
    }

    public func get(_ localizable: InclusiveLocalizable) -> (title: String, description: String, accessibilityDescription: String) {
        return (
            title: NSLocalizedString(localizable.titleKey, comment: localizable.comment),
            description: NSLocalizedString(localizable.descriptionKey, comment: localizable.comment),
            accessibilityDescription: NSLocalizedString(localizable.accessibleDescriptionKey, comment: localizable.comment)
        )
    }
}
