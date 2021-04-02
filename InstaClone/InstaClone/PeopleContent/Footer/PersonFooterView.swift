//
//  PersonFooterView.swift
//  InstaClone
//
//  Created by London Petway on 3/30/21.
//

import SwiftUI

struct PersonFooterView: View {
    //@Binding var clickedOut: Bool
    var content: UserContent?
    var person: Person
    var body: some View {
        if let content = content {
            Text("\(content.likeCount) Likes")
                .padding(.bottom, 3)
                .padding(.leading, 15)
            
            HStack{
                HStack{
                    Text(content.owner.name)
                        .bold()
                        .padding(.leading, 15)
                    Text(content.desc)
                        .padding(.leading, 5)
                    
                }
                Spacer()
                
            }
            Text("View all \(content.comments?.count ?? 0) comments")
                .padding(.bottom, 3)
                .padding(.top, 3)
                .padding(.leading, 15)
            
            MiniAddCommentView(person: person)
    }
}

}
