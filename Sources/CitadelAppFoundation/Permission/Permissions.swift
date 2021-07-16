//
//  Permissions.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

import AVFoundation
import CoreLocation
import Foundation
import Intents
#if !os(watchOS)
import Photos
#endif
import UserNotifications


public class Permissions {
    public static let app = Permissions()
    
    //----------------------------------------------------------------
    // MARK: - Manager
    //----------------------------------------------------------------
    
    private let userDefaults: AppUserDefaults = AppUserDefaults.app
    
    //----------------------------------------------------------------
    // MARK: - Providers
    //----------------------------------------------------------------
    #if !os(watchOS) && !os(tvOS)
    private let cameraProvider: CameraPermissionsProvider = CameraPermissionsProvider()
    #endif
    #if !os(tvOS)
    private let contactsProvider: ContactsPermissionsProvider = ContactsPermissionsProvider()
    private let eventsProvider: EventsPermissionsProvider = EventsPermissionsProvider()
    #endif
    #if os(iOS)
    private let healthProvider: HealthPermissionsProvider = HealthPermissionsProvider()
    #endif
    private let locationProvider: LocationPermissionsProvider = LocationPermissionsProvider()
    private let microphoneProvider: MicrophonePermissionsProvider = MicrophonePermissionsProvider()
    private let notificationProvider: NotificationPermissionsProvider = NotificationPermissionsProvider()
    #if !os(watchOS)
    private let photosProvider: PhotosPermissionsProvider = PhotosPermissionsProvider()
    #endif
    #if !os(macOS)
    private let siriProvider: SiriPermissionsProvider = SiriPermissionsProvider()
    #endif
    
    //----------------------------------------------------------------
    // MARK: - Request Permissions
    //----------------------------------------------------------------
    
    #if !os(watchOS) && !os(tvOS)
    public func requestCamera(deps: CameraPermissionsDeps, completion: @escaping (AVAuthorizationStatus) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedCameraPermissionBefore)
        cameraProvider.request(using: deps, completion: completion)
    }
    #endif
    
    #if !os(tvOS)
    public func requestContacts(deps: ContactsPermissionsDeps, completion: @escaping (Bool) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedContactsPermissionBefore)
        contactsProvider.request(using: deps, completion: completion)
    }
    
    public func requestEvents(deps: EventsPermissionsDeps, completion: @escaping (Bool) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedEventsPermissionBefore)
        eventsProvider.request(using: deps, completion: completion)
    }
    #endif
    
    #if os(iOS)
    public func requestHealth(deps: HealthPermissionsDeps, completion: @escaping (Bool) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedHealthPermissionBefore)
        healthProvider.request(using: deps, completion: completion)
    }
    #endif
    
    public func requestLocation(deps: LocationPermissionsDeps, completion: @escaping () -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedLocationPermissionBefore)
        locationProvider.request(using: deps, completion: completion)
    }
    
    public func requestMicrophone(deps: MicrophonePermissionsDeps, completion: @escaping (Bool) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedMicrophonePermissionBefore)
        microphoneProvider.request(using: deps, completion: completion)
    }
    
    public func requestNotification(deps: NotificationPermissionsDeps, completion: @escaping (UNAuthorizationStatus) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedNotificationPermissionBefore)
        notificationProvider.request(using: deps, completion: completion)
    }
    
    #if !os(watchOS)
    public func requestPhotos(deps: PhotosPermissionsDeps, completion: @escaping (PHAuthorizationStatus) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedPhotosPermissionBefore)
        photosProvider.request(using: deps, completion: completion)
    }
    #endif
    
    #if !os(macOS)
    public func requestSiri(deps: SiriPermissionsDeps, completion: @escaping (INSiriAuthorizationStatus) -> ()) {
        logRequestInUserDefaults(with: PermissionsUserDefaults.hasRequestedSiriPermissionBefore)
        siriProvider.request(using: deps, completion: completion)
    }
    #endif
    
    //----------------------------------------------------------------
    // MARK: - Has Requested
    //----------------------------------------------------------------
    
    public func hasRequested(_ permission: AppPermission) -> Bool {
        return permission.hasRequestedBefore()
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    private func logRequestInUserDefaults(with keyable: PermissionsUserDefaults) {
        userDefaults.set(keyable: keyable, value: .bool(true))
    }
    
    private init() {
        // Use UserDefaults to check initial settings
    }
}


public class PermTest {
    func test() {
        
    }
}
