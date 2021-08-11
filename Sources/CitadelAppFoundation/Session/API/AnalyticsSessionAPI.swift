//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Collections
import Foundation

public protocol AnalyticsSessionAPI: SessionAPI {
    /// App Analytics instance for the Session.
    var analytics: AppAnalytics { get }
    
    ///Contains an `OrderedDictionary` ordered by `Date`.
    ///Reperesents the entire history of `AppEvents` that were fired during the given Session
    var eventHistory: OrderedDictionary<Date, AppEvent> { get set }
    
    func listenToEvents()
    func keepRecordOf(_ event: AppEvent, at date: Date)
}
