//
//  CalendarPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

#if !os(tvOS)
import EventKit
import Foundation

public class EventsPermissionsProvider:
    PermissionsAuthorizable,
    PermissionsRequestable,
    PermissionsProvider {
    
    public typealias Deps = EventsPermissionsDeps
    public typealias AuthorizationStatus = Bool
    
    private let store: EKEventStore = EKEventStore()
    
    public required init() {
    }
    
    public func isPermissionAuthorized(completion: @escaping (Bool) -> ()) {
        
    }
    
    public func request(using deps: EventsPermissionsDeps, completion: @escaping (Bool) -> ()) {
        store.requestAccess(to: deps.type) { success, error in
            completion(success)
        }
    }
}
#endif
