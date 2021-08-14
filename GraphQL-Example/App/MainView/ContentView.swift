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
    @State private var countryEmoji = ""

    var body: some View {
        Text(countryEmoji)
            .font(.title)
            .onAppear {
                Network
                    .apollo
                    .fetchPublisher(query: SpecificCountryQuery())
                    .receive(on: DispatchQueue.main)
                    .sink { completion in
                        switch completion {
                        case .finished:
                            print("hi")
                        case .failure:
                            print("no")
                        }
                    } receiveValue: { value in
                        countryEmoji = value.data?.country?.emoji ?? ""
                    }
                    .store(in: &viewModel.cancellables)
            }
    }
}

#if DEBUG
fileprivate struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
