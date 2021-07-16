//
//  PhotosPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

#if !os(watchOS)
import Photos

public struct PhotosPermissionsDeps: PermissionsDeps {
    let accessLevel: PHAccessLevel
}
extension PHAuthorizationStatus: PermissionsAuthorizationStatus { }
#endif
