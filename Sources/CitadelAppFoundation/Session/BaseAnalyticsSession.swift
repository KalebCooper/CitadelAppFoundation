//
//  BaseAnalyticsSession.swift
//  
//
//  Created by Kaleb Cooper on 7/19/21.
//

import Collections
import Combine
import Foundation

public class BaseAnalyticsSession: AnalyticsSessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //----------------------------------------------------------------
    
    public typealias Session = BaseAnalyticsSession
    public static var shared: BaseAnalyticsSession = BaseAnalyticsSession()
    
    public init() {
        // Kick off any Analytic processes
        listenToEvents()
        start()
    }
    
    
    public let analytics: AppAnalytics = AppAnalytics.app
    
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
    
    public func listenToEvents() {
        analytics.latestEvent.sink { [weak self] event in
            self?.keepRecordOf(event)
        }
        .store(in: &subscribers)
    }
    
    public func keepRecordOf(_ event: AppEvent, at date: Date = Date()) {
        eventHistory[date] = event
    }
    
}



class AnalyticsSession: BaseAnalyticsSession {
//    public static var app: SessionAPI = KanDoAnalyticsSession()
    
    init(test: String) {
        
    }
    
    override func start() {
        
    }
    
}
