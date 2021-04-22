//
//  CommentsBodyView.swift
//  InstaClone
//
//  Created by London Petway on 4/1/21.
//

import SwiftUI
import Amplify
import Combine
struct CommentsBodyView: View {
    //private var comment: Comment
    var isReply: Bool = false
    var person: Person
    @ObservedObject var sot = SourceOfTruth()
    @EnvironmentObject var store: Store
    
  /*
    init(comment: Comment) {
        self.comment = comment
        
    }
    
    */
    var body: some View {
        VStack {
            ForEach(store.following, id: \.id) { person in
                
                HStack{
                    PersonThumbView(person: person, width: 50, linewidth: 2)
                    
                    Text("Nice Post!")
                    Spacer()
                    Image(systemName: "heart")
        }
        }
        
        
        

}
}
}
