//
//  AddCountryView.swift
//  Live_listProuect
//
//  Created by user186890 on 5/13/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @State var cityName: String
    
    var body: some View {
        VStack{
                
            TextField("Add City Name", text: $cityName)
            
            Text(cityName)
          
        }// VStack
        .navigationBarTitle("Add a New Country")
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView(cityName: "Country")
    }
}
