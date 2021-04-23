//
//  DiscoverView.swift
//  InstaClone
//
//  Created by London Petway on 4/22/21.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        
        
        HStack {
            
            Image("LongHair")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 80)
                .padding(.leading)
            
            Image("mrglasses")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 90)
                
            Image("That guy")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 90)
                . padding(.trailing)
                
        }
    }
}


struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
            DiscoverView()
        
    }
}
