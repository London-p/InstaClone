//
//  MessageView.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import SwiftUI
import Amplify
import Combine
struct MessageView: View {
    @State private var text = String()
    @ObservedObject var sot = SourceOfTruth()
    
        
    
    var body: some View {
        NavigationView {
        VStack {
            Text("Messages")
                .font(.system(size: 30))
                
                .padding(.top, 51)
           
            ScrollView {
                LazyVStack {
                    ForEach(sot.messages) {message in
                    
                          
                            Text(message.description!)
                        Text(sot.messages.description)
                    }
                }
            }
            HStack {
                TextField("Enter message", text: $sot.messageTxt)
                Button("Send", action: {didTapSend()})
                    .padding()
                    
            }
            
        }.edgesIgnoringSafeArea(.all)
        
        .padding(.horizontal,20)
        
        }.onAppear(perform: {sot.getMessages()})
        Spacer()
    }


func didTapSend() {
    
    
    
         
    
    sot.createMessage()
    sot.getMessages()
    sot.messageTxt.removeAll()



   
        
    
    
    
}
        
}




