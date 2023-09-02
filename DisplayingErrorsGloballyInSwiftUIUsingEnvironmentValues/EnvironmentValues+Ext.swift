//
//  EnvironmentValues+Ext.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import Foundation
import SwiftUI

extension EnvironmentValues {
    var showError: (Error, String) -> Void {
        get { self[ShowErrorEnvironmentKey.self] }
        set { self[ShowErrorEnvironmentKey.self] = newValue }
    }
}
