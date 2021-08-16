//
//  BaseThemeSession.swift
//  
//
//  Created by Kaleb Cooper on 8/15/21.
//

import Combine
import Foundation

open class BaseThemeSession: ThemeSessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //----------------------------------------------------------------
    
    public typealias Session = BaseThemeSession
    public static var shared: BaseThemeSession = BaseThemeSession()
    
    public typealias BaseTheme = AppTheme
    @Published public var appTheme: AppTheme
    
    public init(defaultTheme: AppTheme = AppTheme()) {
        self.appTheme = defaultTheme
        self.themePublisher = CurrentValueSubject(defaultTheme)
        start()
    }
    
    open func start() {
        themePublisher.sink { [weak self] theme in
            self?.appTheme = theme
        }
        .store(in: &subscribers)
    }
    
    open func resume() {
        
    }
    
    open func resignActive() {
        
    }
    
    open func stop() {
        
    }
    
    open func update(to theme: AppTheme) {
        themePublisher.send(theme)
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    private var themePublisher: CurrentValueSubject<AppTheme, Never>
    private var subscribers: Set<AnyCancellable> = []
    
}
