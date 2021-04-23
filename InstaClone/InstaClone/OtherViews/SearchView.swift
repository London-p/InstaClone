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
       
        VStack {
        HStack{
            TextField("Search", text: $Searches)
                .padding(.leading, 170)
                .font(.system(size: 30))
            
            
            Button(action: {search()}, label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 19)
                    .padding(.trailing, 50)
                    .foregroundColor(Color.black)
            })
            
            
            
            
            
        }
            Text("_____________________________________________")
                .foregroundColor(.gray)
            ScrollView {
                ForEach(1..<15) { _ in
                    DiscoverView()
                }
            }
        }
        Spacer()
    }
    
    
    func search() {
        Searches.removeAll()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}



