//
//  UserSessionAPI.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public protocol UserSessionAPI: SessionAPI {
    static var shared: UserSessionAPI { get }
    
    var user: CurrentValueSubject<AppUser, Never> { get set }
    var originalUser: AppUser { get }
    
    var subscribers: Set<AnyCancellable> { get set }
}
