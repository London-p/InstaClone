//
//  NavView.swift
//  InstaClone
//
//  Created by London Petway on 3/27/21.
//

import SwiftUI

struct NavView: View {
    
    var colWidth: CGFloat
    
    var body: some View {
        LazyVGrid(columns:[
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth))
        ]) {
            Spacer()
            
            Text("InstaClone")
                .font(.custom("OleoScript-Reqular", size: 29))
            
            NavigationLink(destination: MessageView()) {
                
           Image(systemName: "location")
                .resizable()
                .frame(width: 30)
                .foregroundColor(.black)
            }
            
    }
}

}
