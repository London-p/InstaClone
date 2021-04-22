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
    //var message: Message
    //var messages = [Message]()
        @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
      
        VStack {
            Text("Messages")
                .font(.system(size: 30))
                
                .padding(.top, 51)
           
            ScrollView {
                LazyVStack {
                    ForEach(sot.messages) {message in
                    
                          //  Text(messages.description)
                            Text(message.description!)
                        Text(sot.messages.description)
                    }
                }
            }
            HStack {
                TextField("Enter message", text: $text)
                Button("Send", action: {didTapSend()})
                    .padding()
                    
            }
            
        }.edgesIgnoringSafeArea(.all)
        
        .padding(.horizontal,20)
        Spacer()
    }


func didTapSend() {
    
    print(text)
    let message = Message(
        name: "London",
        description: text,
        time: .now()
        )
    
         
    text.removeAll()
    sot.createMessage()
    sot.getMessages()
    



   
        
    
    
    
}
        
}


extension MessageView {
    class ViewModel: ObservableObject {
        @Published var messages = [Message]()
        
        
        
        private var tokens: AnyCancellable?
        func createMessage() {
            let message = Message(
            name: "Lonndon",
            description: "hello",
            time: nil
            )
           tokens = Amplify.DataStore.save(message)
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    print(completion)
                } receiveValue: { savedMessage in
                    print("saved")
                }
            
        }
    }
}

