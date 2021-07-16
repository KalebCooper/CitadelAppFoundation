//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Collections
import Combine
import Foundation

public protocol AnalyticsSessionAPI: SessionAPI {
    var analytics: AppAnalytics { get }
}

open class AnalyticsSession: AnalyticsSessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //----------------------------------------------------------------
    
    /// Singleton instance
    public static var shared: SessionAPI = AnalyticsSession()
    private init() {
        // Kick off any Analytic processes
        listenToEvents()
    }
    
    /// App Analytics instance for the Session.
    public let analytics: AppAnalytics = AppAnalytics.app
    
    ///Contains an `OrderedDictionary` ordered by `Date`.
    ///Reperesents the entire history of `AppEvents` that were fired during the given Session
    public var eventHistory: OrderedDictionary<Date, AppEvent> = [:]
    
    open func start() {
        
    }
    
    open func resume() {
        
    }
    
    open func resignActive() {
        
    }
    
    open func stop() {
        // Kill off all remaining Analytic processes if needed
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    private var subscribers: Set<AnyCancellable> = []
    
    private func listenToEvents() {
        analytics.latestEvent.sink { [weak self] event in
            self?.keepRecordOf(event)
        }
        .store(in: &subscribers)
    }
    
    private func keepRecordOf(_ event: AppEvent) {
        eventHistory[Date()] = event
    }
    
}
