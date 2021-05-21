//
//  AddCountryView.swift
//  Live_listProuect
//
//  Created by user186890 on 5/13/21.
//

import SwiftUI

struct AddCountryView: View {
    
    @Binding var countryController: Countrycontroller
    
    @State var countryName: String = ""
    @State var population: String = ""
    
    var body: some View {
        VStack{
            Text("Plase Add a ne country with the population").font(.title2).multilineTextAlignment(.center).padding(.bottom,30)
            HStack{
                Image(systemName: "pencile.cirle")
                    .foregroundColor(.gray)
                TextField("Country",text:  $countryName)
            }
            .padding()
            .overlay(RoundedRectangle (cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0)
            )
            HStack{
                Image(systemName: "person.3").foregroundColor(.gray)
                TextField("Population",text: $population)
            }.padding()
            .overlay(RoundedRectangle (cornerRadius: 10).stroke(Color.blue, lineWidth: 1.0)
            )
            HStack{
                Button(action: ACTION) {
                    Text("Cancel")
                }
            }
            
        }
    }
}

struct AddCountryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCountryView(countryController:.constant(Countrycontroller(())))
    }
} /*
 
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
 */
