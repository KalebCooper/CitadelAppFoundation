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
