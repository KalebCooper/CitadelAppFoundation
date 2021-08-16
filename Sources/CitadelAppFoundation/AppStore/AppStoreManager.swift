//
//  AppStoreManager.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

import Foundation
import StoreKit

public class AppStoreManager {
    
    //----------------------------------------------------------------
    // MARK: - Review Prompt
    //----------------------------------------------------------------
    
    #if os(iOS) || os(macOS)

    public static func opportunityForPrompt(debug: Bool = false, after delay: DispatchTime = .now() + 1.5) {
        if debug {
            presentReviewPrompt(deadline: delay)
            return
        }
        
        let key = AppStoreUserDefaults.appStoreReviewPromptOpportunityCounter

        // If value does not exist, create initial value at 0
        let oldValue: Int = AppUserDefaults.app.get(keyable: key) ?? 0
        let newValue = oldValue + 1
        
        if newValue == 20 {
            presentReviewPrompt(deadline: delay)
        } else if newValue == 100 {
            presentReviewPrompt(deadline: delay)
        } else if newValue == 250 {
            presentReviewPrompt(deadline: delay)
        }
        
        AppUserDefaults.app.set(keyable: key, value: .integer(newValue))
    }
    
    public static func forceReviewPrompt() {
        presentReviewPrompt(deadline: .now() + 0.5)
    }

    private static func presentReviewPrompt(deadline: DispatchTime) {
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            #if os(iOS)
            if let scene = UIApplication.shared.connectedScenes.first(
                where: { $0.activationState == .foregroundActive }
            ) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
            #elseif os(macOS)
            SKStoreReviewController.requestReview()
            #endif
        }
    }
    
    #endif
}
