//
//  ShowErrorEnvironmentKey.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import Foundation
import SwiftUI

struct ShowErrorEnvironmentKey: EnvironmentKey {
    static var defaultValue: (Error, String) -> Void = { _, _ in }
}
