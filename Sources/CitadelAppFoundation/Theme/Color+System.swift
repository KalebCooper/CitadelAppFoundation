//
//  Color+System.swift
//  
//
//  Created by Kaleb Cooper on 8/15/21.
//

import Foundation
import SwiftUI

public extension Color {
    
    // iOS
    #if os(iOS)
    
    static let background = Color(UIColor.systemBackground)
    static let secondaryBackground = Color(UIColor.secondarySystemBackground)
    static let tertiaryBackground = Color(UIColor.tertiarySystemBackground)
    
    // macOS
    #elseif os(macOS)
    
    static let background = Color(NSColor.windowBackgroundColor)
    static let secondaryBackground = Color(NSColor.underPageBackgroundColor)
    static let tertiaryBackground = Color(NSColor.controlBackgroundColor)

    // tvOS
    #elseif os(iOS)

    // watchOS
    #elseif os(iOS)
    
    
    #endif
}
