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
    
    public static var shared: BaseThemeSession = BaseThemeSession(defaultTheme: AppTheme(), initialScheme: .system)
    
    //----------------------------------------------------------------
    // MARK: - Theme
    //----------------------------------------------------------------
    
    /// Do not set this directly
    @Published public var appTheme: AppTheme
    private var themePublisher: CurrentValueSubject<AppTheme, Never>
    
    //----------------------------------------------------------------
    // MARK: - Scheme
    //----------------------------------------------------------------
    
    /// Computed Property, based on `systemScheme` and `userSchemePreference`
    public var scheme: ColorScheme {
        return userSchemePreference.asColorScheme ?? systemScheme
    }
    @Published public var systemScheme: ColorScheme
    @Published public var userSchemePreference: AppColorScheme
    
    
    @AppStorage("ThemeUserDefaults.userColorSchemePreference.key")
    public var appStorageSchemePreference: Int = 0 // System default
    
    private var colorSchemePublisher: CurrentValueSubject<AppColorScheme, Never>
    
    let darkModeEnabled = Notification.Name("com.yourApp.notifications.darkModeEnabled")
    let darkModeDisabled = Notification.Name("com.yourApp.notifications.darkModeDisabled")
    
    
    //----------------------------------------------------------------
    // MARK: - Private Properties
    //----------------------------------------------------------------
    
    private var subscribers: Set<AnyCancellable> = []
    
    //----------------------------------------------------------------
    // MARK: - Initializer
    //----------------------------------------------------------------
    
    public init(defaultTheme: AppTheme, initialScheme: AppColorScheme) {
        self.appTheme = defaultTheme
        self.themePublisher = CurrentValueSubject(defaultTheme)
        
        self.userSchemePreference = initialScheme
        self.systemScheme = initialScheme.asColorScheme ?? .light
        self.colorSchemePublisher = CurrentValueSubject(initialScheme)
        
        start()
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: darkModeEnabled, object: nil)
        NotificationCenter.default.removeObserver(self, name: darkModeDisabled, object: nil)
    }
    
    //----------------------------------------------------------------
    // MARK: - Session API
    //----------------------------------------------------------------
    
    open func start() {
        setupSystemSchemeNotifications()
        
        
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
                self.userSchemePreference = scheme
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
    open func update(to scheme: AppColorScheme) {
        colorSchemePublisher.send(scheme)
    }
    
    public func setupSystemSchemeNotifications() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(darkModeEnabledAction),
            name: darkModeEnabled,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(darkModeDisabledAction),
            name: darkModeDisabled,
            object: nil
        )
    }
    
    //----------------------------------------------------------------
    // MARK: - Private API
    //----------------------------------------------------------------
    
    @objc private func darkModeEnabledAction() {
        systemScheme = .dark
    }

    @objc private func darkModeDisabledAction() {
        systemScheme = .light
    }
    
}


//open class OLDBaseThemeSession: ThemeSessionAPI {
//
//    //----------------------------------------------------------------
//    // MARK: - Public API
//    //--------------------s--------------------------------------------
//
//    public typealias BaseTheme = AppTheme
//    public typealias Session = BaseThemeSession
//
//    public static var shared: BaseThemeSession = getSharedSession()
//
//    /// Do not set this directly
//    @Published public var appTheme: AppTheme
//    /// Do not set this directly
//    @Published public var scheme: ColorScheme
//    public var userSchemeSelection: ColorScheme?
//
//    public init(defaultTheme: AppTheme, userSchemeSelection: ColorScheme?) {
//        self.appTheme = defaultTheme
//        self.themePublisher = CurrentValueSubject(defaultTheme)
//
//        let startingScheme = userSchemeSelection ?? BaseThemeSession.currentSystemScheme
//
//        self.scheme = startingScheme
//        self.userSchemeSelection = userSchemeSelection
//        self.colorSchemePublisher = CurrentValueSubject(startingScheme)
//
//        start()
//    }
//
//    open func start() {
//        themePublisher.sink { [weak self] theme in
//            self?.appTheme = theme
//        }
//        .store(in: &subscribers)
//
//        colorSchemePublisher
//            .dropFirst(1)
//            .debounce(for: 1.0, scheduler: DispatchQueue.main)
//            .sink { [weak self] scheme in
//                guard let self = self else {
//                    return
//                }
//
//                // Default to system setting
//                let newScheme = scheme ?? self.currentSystemScheme
//                self.appTheme.scheme = newScheme
//                self.scheme = newScheme
//            }
//            .store(in: &subscribers)
//    }
//
//    open func resume() {
//
//    }
//
//    open func resignActive() {
//
//    }
//
//    open func stop() {
//
//    }
//
//    open func update(to theme: AppTheme) {
//        themePublisher.send(theme)
//    }
//    open func update(to scheme: ColorScheme?) {
//        colorSchemePublisher.send(scheme)
//    }
//
//    //----------------------------------------------------------------
//    // MARK: - Private API
//    //----------------------------------------------------------------
//
//    private lazy var currentSystemScheme: ColorScheme = {
//        return BaseThemeSession.currentSystemScheme
//    }()
//
//    private var colorSchemePublisher: CurrentValueSubject<ColorScheme?, Never>
//    private var themePublisher: CurrentValueSubject<AppTheme, Never>
//    private var subscribers: Set<AnyCancellable> = []
//
//    private static var currentSystemScheme: ColorScheme {
//        return (UITraitCollection.current.userInterfaceStyle == .dark)
//            ? ColorScheme.dark
//            : ColorScheme.light
//    }
//    private static func getSharedSession() -> BaseThemeSession {
//        // Eventually, check preference from AppStorage or UserDefaults and inject here
//        return BaseThemeSession(defaultTheme: AppTheme(), userSchemeSelection: nil)
//    }
//
//}
