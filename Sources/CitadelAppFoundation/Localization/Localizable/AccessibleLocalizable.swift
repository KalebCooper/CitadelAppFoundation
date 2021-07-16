//
//  v.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

import Foundation

public protocol AccessibleLocalizable: Localizable {
    var accessibleDescriptionKey: String { get }
}
extension AccessibleLocalizable {
    /// Configure `.isAccessibilityElement`, `.accessibilityLabel`, `.accessibilityValue`, etc.
    func applyAccessibilityConfiguration() { }
}
