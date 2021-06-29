//
//  File.swift
//  
//
//  Created by Kaleb Cooper on 6/28/21.
//

import Combine

public protocol AnalyticsSessionAPI: SessionAPI {
    var analytics: CurrentValueSubject<AppAnalytics, Never> { get set }
    var subscribers: Set<AnyCancellable> { get set }
}
