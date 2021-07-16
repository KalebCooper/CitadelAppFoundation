//
//  NotificationPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/6/21.
//

import Foundation
import UserNotifications

public class NotificationPermissionsProvider:
    PermissionsAuthorizable,
    PermissionsRequestable,
    PermissionsProvider
{
    
    public typealias Deps = NotificationPermissionsDeps
    public typealias AuthorizationStatus = UNAuthorizationStatus

    public required init() {
    }
    
    private let notificationCenter = UNUserNotificationCenter.current()
    
    public func isPermissionAuthorized(completion: @escaping (Bool) -> ()) {
        notificationCenter.getNotificationSettings { settings in
            if settings.authorizationStatus == .authorized ||
                settings.authorizationStatus == .provisional {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
    public func request(using deps: Deps, completion: @escaping (AuthorizationStatus) -> ()) {
        notificationCenter.requestAuthorization(options: deps.authorizationOptions) { isAuthorized, _ in
            let status: UNAuthorizationStatus = (isAuthorized) ? .authorized : .notDetermined
            completion(status)
        }
    }
}
