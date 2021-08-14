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
        var cancellables: Set<AnyCancellable> = []
    }
}
