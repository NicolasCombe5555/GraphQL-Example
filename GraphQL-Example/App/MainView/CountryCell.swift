//
//  CountryCell.swift
//  GraphQL-Example
//
//  Created by nicolasCombe on 8/15/21.
//

import SwiftUI

struct CountryCell: View {
    let country: SmallCountry

    var body: some View {
        HStack {
            Text(country.emoji)
            Text(country.name)
        }
    }
}

#if DEBUG
fileprivate struct CountryCell_Previews: PreviewProvider {
    static var previews: some View {
        CountryCell(country: SmallCountry(code: "PE", name: "Peru", emoji: "🇵🇪"))
    }
}
#endif
