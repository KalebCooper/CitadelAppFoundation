//
//  AppEnvironment.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation
#if os(iOS)
import UIKit
#endif

public protocol AppEnvironment {
    static var env: AppEnvironmentConfig { get }
    
    static var appName: String { get }
    static var bundleId: String { get }
    static var appIcon: String { get }
    
    static var appVersion: String { get }
    static var appBuild: String { get }
    
    #if os(iOS)
    static var deviceType: UIUserInterfaceIdiom { get }
    #endif
}
