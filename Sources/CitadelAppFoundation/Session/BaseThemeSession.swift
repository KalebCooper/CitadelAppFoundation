//
//  BaseThemeSession.swift
//  
//
//  Created by Kaleb Cooper on 8/15/21.
//

import Combine
import Foundation
import SwiftUI

open class BaseThemeSession: ThemeSessionAPI {
    
    //----------------------------------------------------------------
    // MARK: - Public API
    //--------------------s--------------------------------------------
    
    public typealias BaseTheme = AppTheme
    public typealias Session = BaseThemeSession
    
    public static var shared: BaseThemeSession = BaseThemeSession()
    
    /// Do not set this directly
    @Published public var appTheme: AppTheme
    /// Do not set this directly
    @Published public var appColorScheme: ColorScheme?
    
    public init(defaultTheme: AppTheme = AppTheme(), defaultScheme: ColorScheme? = .none) {
        self.appTheme = defaultTheme
        self.appColorScheme = defaultScheme
        self.themePublisher = CurrentValueSubject(defaultTheme)
        self.schemePublisher = CurrentValueSubject(defaultScheme)
        
        self.defaultAppTheme = defaultTheme
        // Default to light mode if all else fails
        self.defaultAppColorScheme = defaultScheme ?? .light
        start()
    }
    
    open func start() {
        themePublisher.sink { [weak self] theme in
            self?.appTheme = theme
        }
        .store(in: &subscribers)
        
        schemePublisher.sink { [weak self] scheme in
            guard let self = self else {
                return
            }
            self.appTheme.scheme = scheme ?? self.defaultAppColorScheme
            self.appColorScheme = scheme
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
    open func update(to scheme: ColorScheme?) {
        schemePublisher.send(scheme)
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    private let defaultAppTheme: AppTheme
    private let defaultAppColorScheme: ColorScheme
    
    private var themePublisher: CurrentValueSubject<AppTheme, Never>
    private var schemePublisher: CurrentValueSubject<ColorScheme?, Never>
    private var subscribers: Set<AnyCancellable> = []
    
}
