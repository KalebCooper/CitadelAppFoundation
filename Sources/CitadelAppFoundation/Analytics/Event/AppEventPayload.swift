//
//  AppEventPayload.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

public struct AppEventPayload {
    var parameters: [String: Any]
    
    public init(with params: [String: Any]) {
        self.parameters = params
    }
}
