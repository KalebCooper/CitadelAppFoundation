//
//  UserDefaultsAnalytics.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

public class UserDefaultsAnalytics: AnalyticsLogger {
    public static var logger: AnalyticsLogger = UserDefaultsAnalytics()
    private init() { }
    
    private let userDefaults: AppUserDefaults = AppUserDefaults.app
    
    public func log(_ event: AppEvent) {
        userDefaults.set(keyable: event.key, value: .dictionary(event.payload.parameters))
    }
}
