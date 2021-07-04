//
//  Versionable.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol Versionable: CaseIterable {
    associatedtype Version: Versionable
    associatedtype AppWhatsNew: WhatsNewRepresentable
    
    func getNextVersion(after version: Version) -> Version?
    static func fromString(_ label: String) -> Version
    static func from(major: Int, minor: Int, patch: Int?) -> Version
    static func getWhatsNew(in version: Version) -> AppWhatsNew
}
