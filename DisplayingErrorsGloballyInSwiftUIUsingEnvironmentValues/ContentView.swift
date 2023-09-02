//
//  ContentView.swift
//  DisplayingErrorsGloballyInSwiftUIUsingEnvironmentValues
//
//  Created by Ramill Ibragimov on 02.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.showError) private var showError
    
    private enum SampleError: Error {
        case operationFailed
    }
    
    var body: some View {
        VStack {
            Button("Throws Error") {
                do {
                    throw SampleError.operationFailed
                } catch {
                    showError(error, "Please try again!")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerContentView()
    }
}
