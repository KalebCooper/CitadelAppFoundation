//
//  AppUser.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol AppUserRepresentable: Identifiable {
    init(guestWith id: String)
}

open class AppUser: AppUserRepresentable {
    public let id: String
    
    public required init(guestWith id: String) {
        self.id = id
    }
}
