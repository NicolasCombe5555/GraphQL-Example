//
//  ContentView.swift
//  GraphQL-Example
//
//  Created by nicolasCombe on 8/14/21.
//

import ApolloCombine
import Combine
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.countries, id: \.code) {
                CountryCell(country: $0)
            }
            .navigationBarTitle("Countries GraphQL")
        }
        .onAppear { viewModel.fetchCountries() }
    }
}

#if DEBUG
fileprivate struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
