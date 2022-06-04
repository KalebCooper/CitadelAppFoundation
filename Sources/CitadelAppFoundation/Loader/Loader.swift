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
public protocol Loader {
    var state: LoadableState { get }
    var delay: Double { get }
    var minimumDuration: Double { get }

    func load(task: Task<(), Never>) async
    func load(task: Task<(), Never>) async -> Task<(), Never>

}
/// A `Loader` that has a configurable delay (before a loading callback),
/// with a minimum duration to remain in a loading state if entered.
public protocol IndefiniteLoader {}
/// Extends a `Loader` to allow for a retry mechanism
public protocol RetryableLoader {}

public protocol LoadableState {
    var isLoading: Bool { get }
}

public class TestLoader: Loader {
    public var state: LoadableState = LoaderState.idle

    public func load(task: Task<(), Never>) async {
        return await load(task: task)
    }
    public func load(task: Task<(), Never>) async -> Task<(), Never> {
        return task
    }

    public var delay: Double = 1.0
    public var minimumDuration: Double = 1.0


}

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
