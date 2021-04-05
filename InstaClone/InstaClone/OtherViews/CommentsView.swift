//
//  CommentsView.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import SwiftUI

struct CommentsView: View {
  //  var comment: Comment
 
    var person: Person
    var body: some View {
        
    
        
        
        VStack{
            Text("Comments")
                .font(.system(size: 30))
                .padding(.top, 41)
            CommentsBodyView(person: person)
           
        }.padding(10).edgesIgnoringSafeArea(.all)
        Spacer()
        
    }
    
}


