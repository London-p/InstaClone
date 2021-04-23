//
//  CartView.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import SwiftUI

struct CartView: View {
    @Binding var cart1: Bool
    var body: some View {
        VStack {
            if cart1 == true {
                
                Button(action: {cart1.toggle()
                }, label: {Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 30, height: 30, alignment: .center)
                })
                
                CoffeContainerView(coffe: "frapp", image: "7")
                
                
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Check Out")
                    .frame(width: 312, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8.0)
                    .padding(.top, 10)

        })
    }
}

}
