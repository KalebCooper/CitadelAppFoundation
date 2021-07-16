//
//  PermissionsAuthorizable.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

import Foundation

public protocol PermissionsAuthorizable {
    func isPermissionAuthorized(completion: @escaping (Bool) -> ())
}
