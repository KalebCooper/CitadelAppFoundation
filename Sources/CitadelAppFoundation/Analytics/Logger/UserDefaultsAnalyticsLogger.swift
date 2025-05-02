//
//  UserDefaultsAnalyticsLogger.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

@MainActor
public class UserDefaultsAnalyticsLogger: AnalyticsLogger {
    public static let logger: AnalyticsLogger = UserDefaultsAnalyticsLogger()
    private init() { }
    
    private let userDefaults: AppUserDefaults = AppUserDefaults.app
    
    public func log(_ event: AppEvent) {
        userDefaults.set(keyable: event.key, value: .dictionary(event.payload.parameters))
    }
}
