//
//  HealthPermissionsDeps.swift
//  
//
//  Created by Kaleb Cooper on 7/15/21.
//

#if os(iOS)

import Foundation
import HealthKit

public struct HealthPermissionsDeps: PermissionsDeps {
    let typesToShare: Set<HKSampleType>?
    let typesToRead: Set<HKObjectType>?
}
#endif

