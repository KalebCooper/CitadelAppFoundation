//
//  BaseUserSession.swift
//  
//
//  Created by Kaleb Cooper on 7/19/21.
//

import Combine
import Foundation

open class BaseUserSession: UserSessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //----------------------------------------------------------------
    public typealias Session = BaseUserSession
    public static var shared: BaseUserSession = {
        let id: String = UUID().uuidString
        // Check for ids cached somewhere if applicable
        let user = AppUser(guestWith: id)
        return BaseUserSession(user: user)
    }()
    
    public typealias User = AppUser
    public var user: CurrentValueSubject<AppUser, Never>
    public var originalUser: AppUser
    
    public required init(user: AppUser) {
        self.user = CurrentValueSubject(user)
        self.originalUser = user
        
        // Final Step
        start()
    }
    
    open func update(user: AppUser) {
        self.user.send(user)
    }
    
    //----------------------------------------------------------------
    // MARK: - Session API
    //----------------------------------------------------------------
    
    open func start() {
        
    }
    
    open func resume() {
        
    }
    
    open func resignActive() {
        
    }
    
    open func stop() {
        
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    
}
