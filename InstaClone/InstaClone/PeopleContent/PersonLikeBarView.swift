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
    var content: UserContent?
    @Binding var liked: Bool
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
                    GridItem(.fixed(colWidth)),
                    GridItem(.fixed(colWidth)),
        ]) {
            HStack {
                
                if liked == false {
                Button(action: {heartButton()}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 19)
                        .padding(.trailing, 10)
                        .foregroundColor(Color.black)
                })
                }
                if liked == true {
                    Button(action: {heartButton()}, label: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 19)
                            .padding(.trailing, 10)
                            .foregroundColor(Color.red)
                           
                    })
                }
                       
                

                NavigationLink(destination: CommentsView(person: person)) {
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
    
    

    

    func heartButton() {
        liked.toggle()
}
}
