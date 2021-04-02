//
//  PersonThumb.swift
//  InstaClone
//
//  Created by London Petway on 3/30/21.
//

import SwiftUI

struct PersonThumbView: View {
    var person: Person
    var width: CGFloat
    var linewidth: CGFloat
    
    var body: some View {
        ZStack {
         //   Rectangle()
         //       .frame(width: width + 8, height: width + 8)
         //       .clipShape(Circle())
         
            Image(person.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width + 26)
                .clipShape(Circle())
        }
    }
}

