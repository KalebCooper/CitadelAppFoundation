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
    
    public static var shared: BaseThemeSession = getSharedSession()
    
    /// Do not set this directly
    @Published public var appTheme: AppTheme
    /// Do not set this directly
    @Published public var currentScheme: ColorScheme
    public var userSchemeSelection: ColorScheme?
    
    public init(defaultTheme: AppTheme, userSchemeSelection: ColorScheme?) {
        self.appTheme = defaultTheme
        self.themePublisher = CurrentValueSubject(defaultTheme)
        
        let startingScheme = userSchemeSelection ?? BaseThemeSession.currentSystemScheme
        
        self.currentScheme = startingScheme
        self.userSchemeSelection = userSchemeSelection
        self.colorSchemePublisher = CurrentValueSubject(startingScheme)
        
        start()
    }
    
    open func start() {
        themePublisher.sink { [weak self] theme in
            self?.appTheme = theme
        }
        .store(in: &subscribers)
        
        colorSchemePublisher
            .dropFirst(1)
            .debounce(for: 1.0, scheduler: DispatchQueue.main)
            .sink { [weak self] scheme in
                guard let self = self else {
                    return
                }
                
                // Default to system setting
                let newScheme = scheme ?? self.currentSystemScheme
                self.appTheme.scheme = newScheme
                self.currentScheme = newScheme
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
        colorSchemePublisher.send(scheme)
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    private lazy var currentSystemScheme: ColorScheme = {
        return BaseThemeSession.currentSystemScheme
    }()
    
    private var colorSchemePublisher: CurrentValueSubject<ColorScheme?, Never>
    private var themePublisher: CurrentValueSubject<AppTheme, Never>
    private var subscribers: Set<AnyCancellable> = []
    
    private static var currentSystemScheme: ColorScheme {
        return (UITraitCollection.current.userInterfaceStyle == .dark)
            ? ColorScheme.dark
            : ColorScheme.light
    }
    private static func getSharedSession() -> BaseThemeSession {
        // Eventually, check preference from AppStorage or UserDefaults and inject here
        return BaseThemeSession(defaultTheme: AppTheme(), userSchemeSelection: nil)
    }
    
}
