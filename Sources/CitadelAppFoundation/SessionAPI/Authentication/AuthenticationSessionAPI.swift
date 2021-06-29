//
//  AuthenticationSessionAPI.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public protocol AuthenticationSessionAPI: SessionAPI {
    var appAuth: CurrentValueSubject<AppAuth, Never> { get set }
    
    var subscribers: Set<AnyCancellable> { get set }
}
