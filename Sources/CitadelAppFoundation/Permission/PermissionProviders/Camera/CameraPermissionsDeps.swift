//
//  CameraPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

#if !os(watchOS) && !os(tvOS)
import AVFoundation

public struct CameraPermissionsDeps: PermissionsDeps {
    let mediaType: AVMediaType
}
extension AVAuthorizationStatus: PermissionsAuthorizationStatus { }
#endif
