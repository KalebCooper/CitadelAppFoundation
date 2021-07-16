//
//  PermissionsRequestable.swift
//  
//
//  Created by Kaleb Cooper on 7/11/21.
//

import Foundation

public protocol PermissionsRequestable {
    associatedtype Deps: PermissionsDeps
    associatedtype AuthorizationStatus: PermissionsAuthorizationStatus
    func request(using deps: Deps, completion: @escaping (AuthorizationStatus) -> ())
}

public protocol PermissionsRequestableInitiatior {
    associatedtype Deps: PermissionsDeps
    func request(using deps: Deps, completion: @escaping () -> ())
}
