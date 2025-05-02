//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 7/3/21.
//

#if os(iOS)
import UIKit

public protocol Haptics: Sendable {
    func generate(type: HapticType, priority: HapticPriority) async
}


public final class AppHaptics: Haptics {

    @MainActor
    public func generate(type: HapticType, priority: HapticPriority) async {
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
