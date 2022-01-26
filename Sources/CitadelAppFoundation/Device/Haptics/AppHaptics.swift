//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

#if os(iOS)
import UIKit

public protocol Haptics {
    func generate(type: HapticType, priority: HapticPriority)
}


public class AppHaptics: Haptics {
    
    public func generate(type: HapticType, priority: HapticPriority) {
        let tapGen = UISelectionFeedbackGenerator()
        tapGen.prepare()
        
        let notificationGen = UINotificationFeedbackGenerator()
        notificationGen.prepare()
        
        switch type {
        
        case .tap:
            tapGen.selectionChanged()
        case .success:
            notificationGen.notificationOccurred(.success)
        case .warning:
            notificationGen.notificationOccurred(.warning)
        case .error:
            notificationGen.notificationOccurred(.error)
        }
    }
}
#endif
