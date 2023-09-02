//
//  ErrorView.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import Foundation
import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text(errorWrapper.error.localizedDescription)
            Text(errorWrapper.guidance ?? "")
        }
    }
}
