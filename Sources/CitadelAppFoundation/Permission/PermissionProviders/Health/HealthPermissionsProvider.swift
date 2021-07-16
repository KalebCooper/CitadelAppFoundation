//
//  HealthPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

import Foundation
#if os(iOS)
import HealthKit

public class HealthPermissionsProvider: PermissionsRequestable, PermissionsProvider {
    
    public typealias Deps = HealthPermissionsDeps
    public typealias AuthorizationStatus = (Bool)
    
    private let healthStore = HKHealthStore()
    
    public required init() {
    }
    
    public func request(using deps: HealthPermissionsDeps, completion: @escaping (Bool) -> ()) {
        healthStore.requestAuthorization(toShare: deps.typesToShare, read: deps.typesToRead) { success, err in
            completion(success)
        }
    }
}
#endif
