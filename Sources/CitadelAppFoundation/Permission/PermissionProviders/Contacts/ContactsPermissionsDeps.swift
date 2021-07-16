//
//  ContactsPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

#if !os(tvOS)
import Contacts

public struct ContactsPermissionsDeps: PermissionsDeps {
    let type: CNEntityType
}
extension CNAuthorizationStatus: PermissionsAuthorizationStatus { }
#endif
