//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public protocol SessionAPI {
    
    associatedtype Session: SessionAPI
    /// Singleton instance
    static var shared: Session { get }
    
    func start()
    func resume()
    func resignActive()
    func stop()
}

//public protocol AppSessionAPI: SessionAPI {
//    static var shared: SessionAPI { get }
//}
