//
//  ContentView.swift
//  Shared
//
//  Created by user186890 on 5/6/21.

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var countrycontroller = Countrycontroller()
   
    
    var body: some View {
        NavigationView {
            List {
                ForEach(countryController.countries){ country in
                    NavigationLink(destination: DetailView(country: country)) {
                        Text(country.name)
                    }
                }.onDelete(perform: deleteItem)
            }
            
            .navigationBarTitle("Countries", displayMode: .inline)

            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: AddCountryView(countryController: countrycontroller)) {
                    Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                })
        }
    }
    
    
    private func deleteItem(at indexSet: IndexSet) {
        self.countrycontroller.countries.remove(atOffsets: indexSet)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
          ContentView()
    }
}/*
import SwiftUI

struct ContentView: View {
    
    var countryController = Countrycontroller()
    
    var body: some View {
        NavigationView {
            List(countryController.countries) { country in
                NavigationLink(destination: DetailView(country: country)) {
                    Text(country.name)
                }
            }
            .navigationBarTitle("Countries", displayMode: .inline)

            .navigationBarItems(
                trailing:NavigationLink(destination: AddCountryView(cityName: "Country")) {
                    Image(systemName: "plus").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)                }
            )
   
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
          ContentView()
        }
        
    }
}
 */

