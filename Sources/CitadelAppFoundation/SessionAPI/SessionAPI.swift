//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol SessionAPI {
    static var shared: SessionAPI { get }
    
    func start()
    func resume()
    func resignActive()
    func stop()
}

public protocol AppSessionAPI: SessionAPI {
    var analyticsSession: AnalyticsSessionAPI { get }
    var authenticationSession: AuthenticationSessionAPI { get }
    var userSession: UserSessionAPI { get }
}
