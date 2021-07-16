//
//  ContactsPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

import Foundation

#if !os(tvOS)
import Contacts

public class ContactsPermissionsProvider:
    PermissionsAuthorizable,
    PermissionsRequestable,
    PermissionsProvider {
    
    public typealias Deps = ContactsPermissionsDeps
    public typealias AuthorizationStatus = Bool
    
    private let store: CNContactStore = CNContactStore()
    
    public required init() {
    }
    
    public func isPermissionAuthorized(completion: @escaping (Bool) -> ()) {
        
    }
    
    public func request(using deps: ContactsPermissionsDeps, completion: @escaping (Bool) -> ()) {
        store.requestAccess(for: deps.type) { success, error in
            completion(success)
        }
    }
}
#endif
