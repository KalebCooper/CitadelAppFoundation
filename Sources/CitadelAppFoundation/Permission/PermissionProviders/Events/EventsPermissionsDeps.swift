//
//  CalendarPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

#if !os(tvOS)
import EventKit
import Foundation

public struct EventsPermissionsDeps: PermissionsDeps {
    let type: EKEntityType
}
//extension CNAuthorizationStatus: PermissionsAuthorizationStatus { }
#endif
