//
//  AppUser.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol AppUserRepresentable: Identifiable {

}

public protocol GuestUserRepresentable: AppUserRepresentable {
    init(guestWith id: String)
}

public class AppUser: AppUserRepresentable {
    public let id: String
    
    public required init(guestWith id: String) {
        self.id = id
    }
}
