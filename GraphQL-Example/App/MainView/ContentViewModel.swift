//
//  ContentViewModel.swift
//  GraphQL-Example
//
//  Created by nicolasCombe on 8/14/21.
//

import Combine
import SwiftUI

extension ContentView {
    final class ViewModel: ObservableObject {
        @Published public var countries: [SmallCountry] = []

        var cancellables: Set<AnyCancellable> = []

        func fetchCountries() {
            Network
                .apollo
                .fetchPublisher(query: AllCountriesQuery())
                .receive(on: DispatchQueue.main)
                .map {
                    $0.data?.countries.map { $0.fragments.smallCountry } ?? []
                }
                .replaceError(with: [])
                .sink { completion in
                    switch completion {
                    case .finished:
                        print("hi")
                    case .failure:
                        print("no")
                    }
                } receiveValue: { [weak self] value in
                    self?.countries = value
                }
                .store(in: &cancellables)
        }
    }
}
