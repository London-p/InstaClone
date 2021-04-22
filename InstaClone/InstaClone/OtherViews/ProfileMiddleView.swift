//
//  ProfileMiddleView.swift
//  InstaClone
//
//  Created by London Petway on 4/4/21.
//

import SwiftUI

struct ProfileMiddleView: View {
    @State private var selection = 1
    var body: some View {
        VStack {
            
            HStack{
                Text("Swift Developer")
                    .padding(.leading, 24)
                    .padding(.top, 16)
                    
                Spacer()
            }
        
            Button(action: {print("hello")}, label: {
                Text("Edit Profile")
                    .frame(width: 312, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8.0)
                    .padding(.top, 10)
            })
            
            Picker("", selection: $selection) {
                Image(systemName: "circle.grid.2x2").tag(0)
                Image(systemName: "person").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
    }
    }
}

struct ProfileMiddleView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMiddleView()
    }
}
