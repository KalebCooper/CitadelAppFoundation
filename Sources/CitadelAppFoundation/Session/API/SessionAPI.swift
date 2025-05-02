//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

@MainActor
public protocol SessionAPI: ObservableObject {
    
    associatedtype Session: SessionAPI
    /// Singleton instance
    static var shared: Session { get }
    
    func start()
    func resume()
    func resignActive()
    func stop()
}
