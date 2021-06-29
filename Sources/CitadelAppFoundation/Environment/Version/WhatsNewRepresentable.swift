//
//  WhatsNewRepresentable.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol WhatsNewRepresentable {
    associatedtype Version: Versionable
    associatedtype Feature: VersionFeatureable
    
    var version: Version { get }
    
    func getTitle() -> String
    func getDescription() -> String
    func getFeatures() -> [Feature]
    
    init(version: Version)
}
