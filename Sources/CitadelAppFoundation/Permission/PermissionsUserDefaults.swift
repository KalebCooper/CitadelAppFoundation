//
//  PermissionsUserDefaults.swift
//  
//
//  Created by Kaleb Cooper on 7/6/21.
//

import Foundation

public enum PermissionsUserDefaults: UserDefaultsKeyable {
    
    //----------------------------------------------------------------
    // MARK: - Permissions
    //----------------------------------------------------------------
    
    ///`Camera - Boolean` value
    case hasRequestedCameraPermissionBefore
    ///`Contacts - Boolean` value
    case hasRequestedContactsPermissionBefore
    ///`Events - Boolean` value
    case hasRequestedEventsPermissionBefore
    ///`Health - Boolean` value
    case hasRequestedHealthPermissionBefore
    ///`Location - Boolean` value
    case hasRequestedLocationPermissionBefore
    ///`Microphone - Boolean` value
    case hasRequestedMicrophonePermissionBefore
    ///`Notification - Boolean` value
    case hasRequestedNotificationPermissionBefore
    ///`Photos - Boolean` value
    case hasRequestedPhotosPermissionBefore
    ///`Siri - Boolean` value
    case hasRequestedSiriPermissionBefore
    
    
    //----------------------------------------------------------------
    // MARK: - UserDefaultsKeyable
    //----------------------------------------------------------------
    
    public var key: String {
        switch self {
        
        case .hasRequestedEventsPermissionBefore:
            return "permission-events-hasRequested"
        case .hasRequestedCameraPermissionBefore:
            return "permission-camera-hasRequested"
        case .hasRequestedContactsPermissionBefore:
            return "permission-contacts-hasRequested"
        case .hasRequestedHealthPermissionBefore:
            return "permission-health-hasRequested"
        case .hasRequestedLocationPermissionBefore:
            return "permission-location-hasRequested"
        case .hasRequestedMicrophonePermissionBefore:
            return "permission-microphone-hasRequested"
        case .hasRequestedNotificationPermissionBefore:
            return "permission-notification-hasRequested"
        case .hasRequestedPhotosPermissionBefore:
            return "permission-photos-hasRequested"
        case .hasRequestedSiriPermissionBefore:
            return "permission-siri-hasRequested"
        }
    }
}
