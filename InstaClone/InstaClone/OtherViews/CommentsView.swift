//
//  CommentsView.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import SwiftUI

struct CommentsView: View {
  
    @ObservedObject var sot = SourceOfTruth()
    @State private var text = String()
    
    var person: Person
    
    var body: some View {
        
        
        
        NavigationView {
        VStack{
            Text("Comments")
                .font(.system(size: 30))
                .padding(.top, 41)
            ScrollView {
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
                TextField("Enter message", text: $sot.messageTxt)
                Button("Send", action: {didTapSend()})
                    .padding()
                    
            }.padding(.horizontal,10)
            }
        }.padding(10).edgesIgnoringSafeArea(.all)
        Spacer()
        
    }
        .onAppear(perform: {sot.getMessages()})
    }
    

    

func didTapSend() {
    
    
        
    
         
    
    sot.createMessage()
    sot.getMessages()
    sot.messageTxt.removeAll()



   
        
    
    
    
}
    
}


