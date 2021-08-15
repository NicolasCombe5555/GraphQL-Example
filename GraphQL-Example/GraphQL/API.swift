// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SpecificCountryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SpecificCountry {
      country(code: "US") {
        __typename
        name
        emoji
      }
    }
    """

  public let operationName: String = "SpecificCountry"

  public let operationIdentifier: String? = "e90b56bd01cf9ff76c0c7b1e00cf7e952d7fe29692dfe4117e5d2bba1b8555de"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("country", arguments: ["code": "US"], type: .object(Country.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(country: Country? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "country": country.flatMap { (value: Country) -> ResultMap in value.resultMap }])
    }

    public var country: Country? {
      get {
        return (resultMap["country"] as? ResultMap).flatMap { Country(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "country")
      }
    }

    public struct Country: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Country"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("emoji", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, emoji: String) {
        self.init(unsafeResultMap: ["__typename": "Country", "name": name, "emoji": emoji])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var emoji: String {
        get {
          return resultMap["emoji"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "emoji")
        }
      }
    }
  }
}
