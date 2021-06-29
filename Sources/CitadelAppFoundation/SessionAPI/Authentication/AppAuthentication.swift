//
//  AuthenticationAPI.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public protocol AppAuthentication {
    
    func create()
    func authenticate()
    func unauthenticate()
    func delete()
    
    var auth: CurrentValueSubject<AppAuth, Never> { get set }
    var subscribers: Set<AnyCancellable> { get set }
}
public extension AppAuthentication {
    func resetPassword() { }
    func authenticateAsGuest() { }
}
