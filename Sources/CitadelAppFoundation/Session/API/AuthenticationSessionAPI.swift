//
//  AuthenticationSessionAPI.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public protocol AuthenticationSessionAPI: SessionAPI {
    associatedtype State: AuthStateAPI
    
    var authState: CurrentValueSubject<State, Never> { get set }
}
