//
// Copyright (c) Vatsal Manot
//

import SwiftUI

struct IsScrollEnabledEnvironmentKey: EnvironmentKey {
    static let defaultValue = true
}

struct IsForceReloadEnvironmentKey: EnvironmentKey {
    static let defaultValue = false
}

extension EnvironmentValues {
    public var isScrollEnabled: Bool {
        get {
            self[IsScrollEnabledEnvironmentKey]
        } set {
            self[IsScrollEnabledEnvironmentKey] = newValue
        }
    }
    
    public var isForceReload: Bool {
        get {
            self[IsForceReloadEnvironmentKey]
        } set {
            self[IsForceReloadEnvironmentKey] = newValue
        }
    }
}

// MARK: - API -

extension View {
    public func isScrollEnabled(_ isEnabled: Bool) -> some View {
        environment(\.isScrollEnabled, isEnabled)
    }
    
    public func isForceReload(_ reloadToggle: Bool) -> some View {
        environment(\.isForceReload, reloadToggle)
    }
}
