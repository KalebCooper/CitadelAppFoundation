//
//  AnalyticsLogger.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

@MainActor
public protocol AnalyticsLogger {
    static var logger: AnalyticsLogger { get }
    func log(_ event: AppEvent)
}
