//
//  DescriptiveLocalizable.swift
//  
//
//  Created by Kaleb Cooper on 7/16/21.
//

import Foundation

public protocol DescriptiveLocalizable: Localizable {
    var descriptionKey: String { get }
}
