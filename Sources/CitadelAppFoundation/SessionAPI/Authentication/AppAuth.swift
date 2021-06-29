//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

open class AppAuth {
    internal init(state: AuthState) {
        self.state = state
    }
    
    open var state: AuthState
}
