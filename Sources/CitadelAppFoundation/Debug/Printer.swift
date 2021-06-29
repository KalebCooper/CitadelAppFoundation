//
//  Printer.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Foundation

public enum PrintType: String {
    case none = ""
    case info = "ℹ️"
    case warning = "⚠️"
    case error = "❌"
    case debug = "🎯"
}
open class Printer {
    private static let iconLineLength: Int = 40
    
    public static func print(_ message: String = "", type: PrintType = .debug, from source: AnyObject? = nil, extraPadding: Bool = false) {
        var iconLine: String = ""
        for _ in 1...iconLineLength {
            iconLine += type.rawValue
        }
        
        if extraPadding { Swift.print() }
        Swift.print(iconLine)
        printSource(source: source)
        Swift.print("Message: " + message)
        Swift.print(iconLine)
        if extraPadding { Swift.print() }
    }
    
    public static func print(_ message: AnyObject, type: PrintType = .debug, from source: AnyObject? = nil, extraPadding: Bool = false) {
        var iconLine: String = ""
        for _ in 1...iconLineLength {
            iconLine += type.rawValue
        }
        
        if extraPadding { Swift.print() }
        Swift.print(iconLine)
        printSource(source: source)
        Swift.print("Message: \(message)")
        Swift.print(iconLine)
        if extraPadding { Swift.print() }
    }
    
    private static func printSource(source: AnyObject?) {
        if let source = source, let classForCoder = source.classForCoder {
            let name = NSStringFromClass(classForCoder)
            let className = name.components(separatedBy: ".").last ?? name
            Swift.print("Source: " + className)
        }
    }
}
