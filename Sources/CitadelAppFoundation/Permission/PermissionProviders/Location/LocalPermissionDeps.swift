//
//  LocationPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/11/21.
//

import Foundation

public struct LocationPermissionsDeps: PermissionsDeps {
    
    var type: RequestType
    
    public enum RequestType {
        case always
        case oneTime
        case temporary(purpose: String)
        case whenInUse
    }
}
