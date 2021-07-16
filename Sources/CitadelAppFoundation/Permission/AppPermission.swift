//
//  AppPermission.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

import Foundation

public enum AppPermission {
    
    case camera
    case contacts
    /// Calendar/Reminders
    case events
    case health
    case location
    case microphone
    case notifications
    case photos
//    case mediaLibrary
//    case speechRecognizer
    case siri
    
    public var displayName: String {
        switch self {
        
        case .camera:
            return AppLocale.get(PermissionLocalizable.camera)
        case .contacts:
            return AppLocale.get(PermissionLocalizable.contacts)
        case .events:
            return AppLocale.get(PermissionLocalizable.events)
        case .health:
            return AppLocale.get(PermissionLocalizable.health)
        case .location:
            return AppLocale.get(PermissionLocalizable.location)
        case .microphone:
            return AppLocale.get(PermissionLocalizable.microphone)
        case .notifications:
            return AppLocale.get(PermissionLocalizable.notifications)
        case .photos:
            return AppLocale.get(PermissionLocalizable.photos)
//        case .mediaLibrary:
//            return AppLocale.get(PermissionLocalizable.mediaLibrary)
//        case .speechRecognizer:
//            return AppLocale.get(PermissionLocalizable.speechRecognizer)
        case .siri:
            return AppLocale.get(PermissionLocalizable.siri)
        
        }
    }
    
    public func hasRequestedBefore() -> Bool {
        let hasRequested: Bool? = AppUserDefaults.app.get(keyable: hasRequestedKey)
        return hasRequested ?? false
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    private var hasRequestedKey: UserDefaultsKeyable {
        switch self {
        
        case .camera:
            return PermissionsUserDefaults.hasRequestedCameraPermissionBefore
        case .contacts:
            return PermissionsUserDefaults.hasRequestedContactsPermissionBefore
        case .events:
            return PermissionsUserDefaults.hasRequestedEventsPermissionBefore
        case .health:
            return PermissionsUserDefaults.hasRequestedHealthPermissionBefore
        case .location:
            return PermissionsUserDefaults.hasRequestedLocationPermissionBefore
        case .microphone:
            return PermissionsUserDefaults.hasRequestedMicrophonePermissionBefore
        case .notifications:
            return PermissionsUserDefaults.hasRequestedNotificationPermissionBefore
        case .photos:
            return PermissionsUserDefaults.hasRequestedPhotosPermissionBefore
        case .siri:
            return PermissionsUserDefaults.hasRequestedSiriPermissionBefore
        
        }
    }
}
