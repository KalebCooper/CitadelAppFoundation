//
//  AppEnvironmentRepresentable.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation
#if os(iOS)
import UIKit
#endif

public protocol AppEnvironmentRepresentable {
    associatedtype Version: Versionable
    
    var env: AppEnvironmentConfig { get }
    
    var appName: String { get }
    var bundleId: String { get }
    var appIcon: String { get }
    
    var appVersion: Version { get }
    var appBuild: String { get }
    
    #if os(iOS)
    var deviceType: UIUserInterfaceIdiom { get }
    #endif
}
