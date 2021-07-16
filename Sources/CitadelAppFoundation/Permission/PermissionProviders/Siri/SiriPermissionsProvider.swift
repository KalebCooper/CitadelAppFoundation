//
//  SiriPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

import Foundation
#if !os(macOS)
import Intents

public class SiriPermissionsProvider:
    PermissionsAuthorizable,
    PermissionsRequestable,
    PermissionsProvider {
    
    public typealias Deps = SiriPermissionsDeps
    public typealias AuthorizationStatus = INSiriAuthorizationStatus
    
    public required init() {
    }
    
    public func isPermissionAuthorized(completion: @escaping (Bool) -> ()) {
        let isAuthorized = INPreferences.siriAuthorizationStatus() == .authorized
        completion(isAuthorized)
    }
    
    public func request(using deps: SiriPermissionsDeps, completion: @escaping (INSiriAuthorizationStatus) -> ()) {
        INPreferences.requestSiriAuthorization(completion)
    }
    
    
}
#endif
