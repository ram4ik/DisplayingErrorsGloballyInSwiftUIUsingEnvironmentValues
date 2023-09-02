//
//  ContainerContentView.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import Foundation
import SwiftUI

struct ContainerContentView: View {
    @State var errorWrapper: ErrorWrapper?
    
    var body: some View {
        ContentView()
            .environment(\.showError) { error, guidance in
                errorWrapper = ErrorWrapper(error: error, guidance: guidance)
            }
            .sheet(item: $errorWrapper) { errorWrapper in
                ErrorView(errorWrapper: errorWrapper)
            }
    }
}
