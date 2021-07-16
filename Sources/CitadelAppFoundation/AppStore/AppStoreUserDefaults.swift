//
//  AppStoreUserDefaults.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

public enum AppStoreUserDefaults: UserDefaultsKeyable {
    ///`AppStore Review Prompt Opportunity Counter - Int` value
    case appStoreReviewPromptOpportunityCounter
    
    public var key: String {
        switch self {
        case .appStoreReviewPromptOpportunityCounter:
            return "appstore-reviewPrompt-opportunity-counter"
        }
    }
}
