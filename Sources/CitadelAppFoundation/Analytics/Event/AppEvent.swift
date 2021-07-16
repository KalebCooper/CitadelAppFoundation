//
//  AppEvent.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation
import Combine

public protocol AppEvent {
    /// Should contain 1 to 40 alphanumeric characters or underscores. The name must start with an alphabetic character.
    var key: AppEventKey { get }
    var payload: AppEventPayload { get }
}

//----------------------------------------------------------------
// MARK: - Base App Event
//----------------------------------------------------------------

public enum BaseAppEvent: AppEvent {
    
    case analyticsStartup
    
    public var key: AppEventKey {
        switch self {
        case .analyticsStartup:
            return AppEventKey("analytics_event_startup")
        }
    }
    
    public var payload: AppEventPayload {
        switch self {
        case .analyticsStartup:
            let params: [String: Any] = [:]
            return AppEventPayload(with: params)
        }
    }
}
