//
//  CommentsView.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import SwiftUI

struct CommentsView: View {
  //  var comment: Comment
    @ObservedObject var sot = SourceOfTruth()
    @State private var text = String()
    
    var person: Person
    var body: some View {
        
        
        
        
        VStack{
            Text("Comments")
                .font(.system(size: 30))
                .padding(.top, 41)
            CommentsBodyView(person: person)
            
            ForEach(sot.messages) {message in
                HStack{
                    Image("London")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 62)
                        .clipShape(Circle())
                        .padding(.horizontal, 7)
                    
                    Text(message.description!)
                    Spacer()
                    Image(systemName: "heart")
                }
                
            }
            HStack {
                TextField("Enter message", text: $text)
                Button("Send", action: {didTapSend()})
                    .padding()
                    
            }.padding(.horizontal,10)
        }.padding(10).edgesIgnoringSafeArea(.all)
        Spacer()
        
    }
    

    

func didTapSend() {
    
    
        
    
         
    text.removeAll()
    sot.createMessage()
    sot.getMessages()
    



   
        
    
    
    
}
    
}


