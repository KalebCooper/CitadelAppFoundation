//
//  UserDefaultsKey.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

import Foundation

public enum UserDefaultsFoundation: String, UserDefaultsKeyable {
    
    ///`Boolean` value
    case hasRequestedNotificationPermissionBefore
    ///`Boolean` value
    case hasRequestedHealthPermissionBefore
    ///`Boolean` Value
    case hasRequestedCameraPermissionBefore
    ///`Integer` Value
    case appStoreReviewPromptOpportunityCounter
    
    public var key: String {
        switch self {
        
        case .hasRequestedNotificationPermissionBefore:
            return "hasRequestedNotificationPermissionBefore"
        case .hasRequestedHealthPermissionBefore:
            return "hasRequestedHealthPermissionBefore"
        case .hasRequestedCameraPermissionBefore:
            return "hasRequestedCameraPermissionBefore"
        case .appStoreReviewPromptOpportunityCounter:
            return "appStoreReviewPromptOpportunityCounter"
        }
    }
}
