//
//  SearchView.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import SwiftUI

struct SearchView: View {
    @State var Searches = ""
    
    var body: some View {
        HStack{
            TextField("Search", text: $Searches)
                .padding(.leading, 170)
                .font(.system(size: 30))
            
            Image(systemName: "magnifyingglass")
                
                .padding(.trailing, 50)
            
        }
        Spacer()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
