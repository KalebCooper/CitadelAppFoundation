//
//  AppAnalytics.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public class AppAnalytics {
    
    //----------------------------------------------------------------
    // MARK: - App Singleton
    //----------------------------------------------------------------
    public static let app = AppAnalytics(BaseAppEvent.analyticsStartup)
    private init(_ initialEvent: AppEvent) {
        latestEvent = CurrentValueSubject(initialEvent)
    }
    
    //----------------------------------------------------------------
    // MARK: - Latest Event
    //----------------------------------------------------------------
    
    public let latestEvent: CurrentValueSubject<AppEvent, Never>
    
    //----------------------------------------------------------------
    // MARK: - Log
    //----------------------------------------------------------------
    
    public func log(_ event: AppEvent, with logger: AnalyticsLogger = UserDefaultsAnalytics.logger) {
        latestEvent.send(event)
        logger.log(event)
    }
}
