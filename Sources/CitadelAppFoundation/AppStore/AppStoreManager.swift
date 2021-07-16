//
//  AppStoreManager.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

import Foundation
import StoreKit

public class AppStoreManager {

    public static func opportunityForPrompt(debug: Bool = false) {
        if debug {
            presentReviewPrompt()
            return
        }
        
        let key = AppStoreUserDefaults.appStoreReviewPromptOpportunityCounter

        // If value does not exist, create initial value at 0
        let oldValue: Int = AppUserDefaults.app.get(keyable: key) ?? 0
        let newValue = oldValue + 1
        
        AppUserDefaults.app.set(keyable: key, value: .integer(newValue))

        if newValue == 20 {
            presentReviewPrompt()
        } else if newValue == 100 {
            presentReviewPrompt()
        } else if newValue == 250 {
            presentReviewPrompt()
        }
    }
    
    public static func forceReviewPrompt() {
        presentReviewPrompt(deadline: .now() + 0.5)
    }

    private static func presentReviewPrompt(deadline: DispatchTime = .now() + 1.5) {
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            SKStoreReviewController.requestReview()
        }
    }
}
