//
//  DetailView.swift
//  Live_listProuect (iOS)
//
//  Created by user186890 on 5/11/21.
//

import SwiftUI

struct DetailView: View {
    
    let country: CountryModel
    
    var body: some View {
        Text(country.name + " -> " + country.population)
    }
}

struct Detailview_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(country: CountryModel(id: UUID(), name: "asdf", population: "too many"))
    }
}
