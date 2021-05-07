//
//  CountryController.swift
//  Live_listProuect (iOS)
//
//  Created by user186890 on 5/6/21.
//

import Foundation

class CountryController {
    //Create a variabe which will hold the data for the list
    var contries: [CountryModel]
    
    init(){
        //Let put some into the array
        self.contries=[
            CountryModel(id: UUID() , name: "Mexico", population:" 127"),
            CountryModel(id: UUID() , name: "Canada", population:" 37"),
            CountryModel (id: UUID() , name: "France", population:" 67"),
            CountryModel (id: UUID() , name: "Italy", population:" 60"),            CountryModel(id: UUID() , name: "China", population:" 1333")         ]
    }
}
