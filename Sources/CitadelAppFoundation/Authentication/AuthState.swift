//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol AuthStateAPI {
    // TODO: Setup protocol requirements
}

public enum AuthState: AuthStateAPI {
    case appLaunch
    case guest
    case authenticated
    case unauthenticated
}
