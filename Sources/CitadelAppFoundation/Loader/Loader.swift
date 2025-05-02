//
//  Loader.swift
//  
//
//  Created by Kaleb Cooper on 3/28/22.
//

import Combine
import Foundation

// MARK: Loaders

/// Main `Loader` interface
@MainActor
public protocol Loader: Sendable {
    var state: any LoadableState { get }
    var delay: Double { get }
    var minimumDuration: Double { get }

    func load(task: Task<(), Never>) async
    func load(task: Task<(), Never>) async -> Task<(), Never>
    func cancel()
}

extension Loader {
    public var delay: Double {
        return 0.0
    }
    
    public var minimumDuration: Double {
        return 0.0
    }
    
    public func cancel() { }
}

/// A `Loader` that has a configurable delay (before a loading callback),
/// with a minimum duration to remain in a loading state if entered.
@MainActor
public protocol IndefiniteLoader: Sendable {}
/// Extends a `Loader` to allow for a retry mechanism
@MainActor
public protocol RetryableLoader: Sendable {}

@MainActor
public protocol LoadableState: Sendable {
    var isLoading: Bool { get }
}

@MainActor
public class TestLoader: Loader {
    public var state: any LoadableState = LoaderState.idle

    public func load(task: Task<(), Never>) async {
        // Empty implementation for testing
    }
    public func load(task: Task<(), Never>) async -> Task<(), Never> {
        return task
    }

    public var delay: Double = 1.0
    public var minimumDuration: Double = 1.0
}

@MainActor
struct TestGuy {
    func test() async {
        await load() {
            print("Loading complete")
        }
    }

    func printGuy() async {
        print("Hello there")
    }

    public func load(task: @escaping () -> ()) async {
        await printGuy()
        task()
    }
}

@MainActor
public enum LoaderState: LoadableState, Equatable {
    public var isLoading: Bool {
        return self == .loadingThreshold || self == .loading
    }

    /// Loader is idle, ready to begin loading
    case idle
    /// Loader is attempting to complete within a defined window of time.
    case loadingThreshold
    /// Loader is actively processing or waiting for a particular task to fail or complete
    case loading
    /// The loader has failed
    case failed
    /// The loader has completed
    case complete
}
