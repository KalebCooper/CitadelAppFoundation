//
//  CameraPermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

#if !os(watchOS) && !os(tvOS)
import AVFoundation

public class CameraPermissionsProvider: PermissionsRequestable, PermissionsProvider {
    
    public typealias Deps = CameraPermissionsDeps
    public typealias AuthorizationStatus = AVAuthorizationStatus
    
    public required init() {
    }
    
    public func request(using deps: CameraPermissionsDeps, completion: @escaping (AVAuthorizationStatus) -> ()) {
        completion(AVCaptureDevice.authorizationStatus(for: deps.mediaType))
    }
}
#endif
