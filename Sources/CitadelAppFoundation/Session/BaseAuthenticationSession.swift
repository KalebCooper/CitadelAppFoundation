//
//  BaseAuthenticationSession.swift
//  
//
//  Created by Kaleb Cooper on 7/19/21.
//

import Combine
import Foundation

open class BaseAuthenticationSession: AuthenticationSessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //----------------------------------------------------------------
    
    public typealias Session = BaseAuthenticationSession
    public static var shared: BaseAuthenticationSession = BaseAuthenticationSession()
    
    public init() {
        start()
    }
    
    public typealias State = AuthState
    public var authState: CurrentValueSubject<AuthState, Never> = {
        let state: AuthState = .appLaunch
        let auth: CurrentValueSubject<AuthState, Never> = CurrentValueSubject(state)
        return auth
    }()
    
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
    
    private var subscribers: Set<AnyCancellable> = []
}
