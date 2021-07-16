//
//  PhotosPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

import Foundation
#if !os(watchOS)
import Photos

public class PhotosPermissionsProvider:
    PermissionsAuthorizable,
    PermissionsRequestable,
    PermissionsProvider {
    
    public typealias Deps = PhotosPermissionsDeps
    public typealias AuthorizationStatus = PHAuthorizationStatus
    
    public required init() {
    }
    
    public func isPermissionAuthorized(completion: @escaping (Bool) -> ()) {
        completion(PHPhotoLibrary.authorizationStatus() == .authorized)
    }
    
    public func request(using deps: PhotosPermissionsDeps, completion: @escaping (PHAuthorizationStatus) -> ()) {
        PHPhotoLibrary.requestAuthorization(for: deps.accessLevel, handler: completion)
    }
}
#endif
