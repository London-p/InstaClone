//
//  PeopleContentView.swift
//  InstaClone
//
//  Created by London Petway on 3/29/21.
//

import SwiftUI

struct PeopleContentView: View {
    var person: Person
   
    
    var body: some View {
        HStack {
            Image(person.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 55)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                
            
                Text(person.name)
            }
        }
    }
}


