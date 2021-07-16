//
//  SiriPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

import Intents

public struct SiriPermissionsDeps: PermissionsDeps {

}
#if !os(macOS)
extension INSiriAuthorizationStatus: PermissionsAuthorizationStatus { }
#endif
