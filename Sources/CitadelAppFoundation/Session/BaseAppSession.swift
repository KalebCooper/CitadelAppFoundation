//
//  BaseAppSession.swift
//  
//
//  Created by Kaleb Cooper on 7/19/21.
//

import Foundation

open class BaseAppSession: SessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //----------------------------------------------------------------
    public typealias Session = BaseAppSession
    public static var shared: BaseAppSession = BaseAppSession()
    
    public init() {
        start()
    }
    
    public func start() {
        
    }
    
    public func resume() {
        
    }
    
    public func resignActive() {
        
    }
    
    public func stop() {
        
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
}
