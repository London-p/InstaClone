//
//  CoffeContainerView.swift
//  SideMenu
//
//  Created by London Petway on 4/5/21.
//

import SwiftUI

struct CoffeContainerView: View {
    var coffe: String
    var image: String
  
    var body: some View {
        VStack {
            Text(coffe)
                .foregroundColor(.white)
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 130, height: 130)
                .cornerRadius(15)
            Text("5.99")
                .foregroundColor(.white)
            
}.frame(width: 150, height: 230).background(Color.gray)
.cornerRadius(15)
    }
}

