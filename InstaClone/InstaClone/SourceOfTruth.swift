//
//  SourceOfTruth.swift
//  InstaClone
//
//  Created by London Petway on 4/15/21.
//

import Amplify
import Foundation
import Combine
class SourceOfTruth: ObservableObject {
    @Published var messages = [Message]()
    
    @Published var messageTxt = ""
    func send(_ message: Message) {
        Amplify.API.mutate(request: .create(message)) { mutationResult in
            switch mutationResult {
            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Created message")
                
                case .failure(let error):
                    print(error)
                    
            }
                
            case .failure(let apiError):
                print(apiError)
        }
    }
}

    var tokens = Set<AnyCancellable>()
    var token: AnyCancellable?
    func createMessage() {
        let message = Message(
        name: "London",
        description: messageTxt
        )
        
       token = Amplify.DataStore.save(message)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                print(completion)
            } receiveValue: { savedMessage in
                print("saved")
            }
     
        
        
        
    }
    
    func getMessages() {
        Amplify.DataStore.query(Message.self)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                print(completion)
            } receiveValue: { messages in
                self.messages = messages
            }
            .store(in: &tokens)
        

            }
}
