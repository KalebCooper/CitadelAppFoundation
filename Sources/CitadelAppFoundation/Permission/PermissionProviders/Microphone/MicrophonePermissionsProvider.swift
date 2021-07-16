//
//  MicrophonePermissionsProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/6/21.
//

import AVFoundation

public class MicrophonePermissionsProvider: PermissionsRequestable, PermissionsProvider {
    
    public typealias Deps = MicrophonePermissionsDeps
    public typealias AuthorizationStatus = Bool
    
    public required init() {
    }
    
    public func request(using deps: MicrophonePermissionsDeps, completion: @escaping (Bool) -> ()) {
        #if os(macOS)
        AVCaptureDevice.requestAccess(for: .audio, completionHandler: completion)
        #elseif !os(tvOS)
        AVAudioSession.sharedInstance().requestRecordPermission(completion)
        #endif
    }
    
    
}
