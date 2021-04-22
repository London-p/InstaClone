//
//  MiniAddCommentView.swift
//  InstaClone
//
//  Created by London Petway on 3/30/21.
//

import SwiftUI

struct MiniAddCommentView: View {
    var person: Person
    @State var commentTxt: String = ""
    @State var showSubTextField = false
   // @Binding var clickedOut: Bool
    @ObservedObject var sot = SourceOfTruth()
    let placeHolder = "Add a comment"
    
    var body: some View {
        HStack(spacing: 10) {
            PersonThumbView(person: person, width: 15, linewidth: 0)
            
            TextField("Add a comment", text: $commentTxt,
                      onEditingChanged: {_ in
                       // if self.clickedOut == true {
                     //       self.clickedOut = false
                    //    }
                      
                        self.showSubTextField = true
                        
                      })
                        .foregroundColor(.gray)
            
            
            
            Button("Send", action: {tapSend()})
                .padding()
            
                      
            HStack{
                
            }
            
           
                
        }    }


func tapSend() {
    
    
    
         
    commentTxt.removeAll()
    sot.createMessage()
    sot.getMessages()
    



   
        
    
    
    
}
}
