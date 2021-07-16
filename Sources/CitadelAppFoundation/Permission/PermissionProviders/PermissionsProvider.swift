//
//  PermissionProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/6/21.
//

import Foundation

public protocol PermissionsDeps { }

public protocol PermissionsAuthorizationStatus { }
extension Bool: PermissionsAuthorizationStatus { }

public protocol PermissionsProvider {
    
    // Init
    init()
}


