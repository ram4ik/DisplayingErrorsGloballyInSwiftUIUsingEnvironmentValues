//
//  ErrorWrapper.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id = UUID()
    let error: Error
    let guidance: String?
}
