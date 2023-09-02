//
//  ContentView.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var errorWrapper: ErrorWrapper?
    
    private enum SampleError: Error {
        case operationFailed
    }
    
    var body: some View {
        VStack {
            Button("Throws Error") {
                do {
                    throw SampleError.operationFailed
                } catch {
                    errorWrapper = ErrorWrapper(error: error, guidance: "Please try again.")
                }
            }.sheet(item: $errorWrapper) { errorWrapper in
                VStack {
                    ErrorView(errorWrapper: errorWrapper)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
