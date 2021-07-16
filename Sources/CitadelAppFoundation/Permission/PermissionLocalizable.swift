//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

import Foundation

public enum PermissionLocalizable: Localizable {
    // Options:
    case camera
    case contacts
    case events
    case health
    case microphone
    case notifications
    case photos
    case location
    case mediaLibrary
    case speechRecognizer
    case siri
    
    //----------------------------------------------------------------
    // MARK: - LocalizableKey
    //----------------------------------------------------------------
    
    public var titleKey: String {
        switch self {
        case .camera:
            return "permission-camera-title"
        case .contacts:
            return "permission-contacts-title"
        case .events:
            return "permission-events-title"
        case .health:
            return "permission-health-title"
        case .microphone:
            return "permission-microphone-title"
        case .notifications:
            return "permission-notifications-title"
        case .photos:
            return "permission-photos-title"
        case .location:
            return "permission-location-title"
        case .mediaLibrary:
            return "permission-mediaLibrary-title"
        case .speechRecognizer:
            return "permission-speechRecognizer-title"
        case .siri:
            return "permission-siri-title"
        }
    }
}
