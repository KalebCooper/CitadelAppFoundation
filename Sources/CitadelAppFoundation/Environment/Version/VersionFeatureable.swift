//
//  VersionFeatureable.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol VersionFeatureable {
    var changeType: VersionFeatureChangeType { get }
    var title: String { get }
    var description: String { get }
}
