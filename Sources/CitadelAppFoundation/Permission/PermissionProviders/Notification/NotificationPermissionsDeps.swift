//
//  NotificationPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/11/21.
//

import Foundation
import UserNotifications

public struct NotificationPermissionsDeps: PermissionsDeps {
    let authorizationOptions: UNAuthorizationOptions
}
extension UNAuthorizationStatus: PermissionsAuthorizationStatus { }
