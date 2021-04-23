//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                
                HStack{
                Image("2")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding()
                Spacer()
                    Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .frame(width: 40, height: 42)
                            .foregroundColor(.white)
                            .padding()
                    })
                }
                Text("London Petway")
                    .font(.system(size: 24, weight: .semibold))
                    .padding(.leading, 20)
                
                
            }
            .foregroundColor(.white)
            Spacer()
    }
        
}
}
