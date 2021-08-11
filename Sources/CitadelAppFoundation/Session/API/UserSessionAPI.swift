//
//  UserSessionAPI.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public protocol UserSessionAPI: SessionAPI {
    associatedtype User: AppUserRepresentable
    
    var user: CurrentValueSubject<User, Never> { get set }
    var originalUser: User { get }
    
    /// Convenience function that forwards the `User` object into the `user: CurrentValueSubject<>`
    func update(user: User)
    
    /// On launch/start, this is typically going to be a temporary "guest user" that
    /// holds the bare minimum of information needed to identify a user over a session.
    /// Once the app is able to identify a new authenticated user, it will replace the `user`.
    init(user: User)
}
