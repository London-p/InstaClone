//
//  MessageView.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import SwiftUI

struct MessageView: View {
    @State private var text = String()
    
    var body: some View {
      
        VStack {
            Text("Messages")
                .font(.system(size: 30))
                
                .padding(.top, 51)
            ScrollView {
                LazyVStack {
                    
                }
            }
            HStack {
                TextField("Enter message", text: $text)
                Button("Send", action: {})
                    .padding()
                    
            }
            
        }.edgesIgnoringSafeArea(.all)
        
        .padding(.horizontal,20)
        Spacer()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
