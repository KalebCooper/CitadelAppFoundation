//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation
open class Locale {
    // get string for key
    // allow modifier like get with capital, all caps, all lowercase, max length, etc
    public static func get(_ key: LocalizableKey, _ comment: String = "") -> String {
        return NSLocalizedString(key.keyString, comment: comment)
    }
}
