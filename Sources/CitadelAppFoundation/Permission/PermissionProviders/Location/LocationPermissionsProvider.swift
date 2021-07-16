//
//  LocationProvider.swift
//  
//
//  Created by Kaleb Cooper on 7/4/21.
//

import CoreLocation
import Foundation


extension CLAuthorizationStatus: PermissionsAuthorizationStatus { }

public class LocationPermissionsProvider:
    PermissionsAuthorizable,
    PermissionsRequestableInitiatior,
    PermissionsProvider
{
    
    public typealias Deps = LocationPermissionsDeps
    public typealias AuthorizationStatus = CLAuthorizationStatus
    
    public required init() {
    }
    
    public func isPermissionAuthorized(completion: @escaping (Bool) -> ()) {
        let authorizationStatus = locationManager.authorizationStatus
        
        if authorizationStatus == .authorizedAlways {
            completion(true)
        }
        
        #if os(macOS)
        if authorizationStatus == .authorized {
            completion(true)
        }
        #else
        if authorizationStatus == .authorizedWhenInUse {
            completion(true)
        }
        #endif
        
        completion(false)
    }
    
    public func request(using deps: Deps, completion: @escaping () -> ()) {
        
        switch deps.type {
        case .always:
            #if !os(tvOS)
            locationManager.requestAlwaysAuthorization()
            #endif
        case .oneTime:
            locationManager.requestLocation()
        case .temporary(let purpose):
            locationManager.requestTemporaryFullAccuracyAuthorization(withPurposeKey: purpose)
        case .whenInUse:
            locationManager.requestWhenInUseAuthorization()
        }
        
        completion()
    }
    
    private let locationManager = CLLocationManager()
}
