//
//  PersonLikeBar.swift
//  InstaClone
//
//  Created by London Petway on 3/29/21.
//

import SwiftUI

struct PersonLikeBarView: View {
    var colWidth: CGFloat
    var person: Person
 //   var comment: Comment
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
                    GridItem(.fixed(colWidth)),
                    GridItem(.fixed(colWidth)),
        ]) {
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 19)
                    .padding(.trailing, 10)
                

                NavigationLink(destination: CommentsView( person: person)) {
                    Image(systemName: "message")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                        .padding(.trailing, 8)
                        .foregroundColor(.black)
                }

                Image(systemName: "location")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 19)
                        .padding(.trailing, 10)
                    
                

            }
            Spacer()
            
            Image(systemName: "bookmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 13)
                .padding(.trailing, 10)
        }
        
    }
    
    
}
    

