//
//  NetworkManager.swift
//  GraphQL-Example
//
//  Created by nicolasCombe on 8/14/21.
//

import Apollo
import Foundation

enum Network {
    static let apollo = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)
}
