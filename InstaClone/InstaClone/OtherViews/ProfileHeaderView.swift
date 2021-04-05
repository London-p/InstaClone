//
//  ProfileHeaderView.swift
//  InstaClone
//
//  Created by London Petway on 4/4/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack{
            Text("London")
                .font(.system(size: 25))
                .bold()
            HStack {
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                    .foregroundColor(.gray)
                Spacer()
                VStack{
                    Text("Followers")
                        .font(.system(size: 25))
                    Text("37")
                        .font(.system(size: 25))
                }
                Spacer()
                VStack{
                    Text("Following")
                        .font(.system(size: 25))
                    Text("15")
                        .font(.system(size: 25))
                }
               Spacer()
            }
            
    }
        .navigationBarHidden(true)
}
}
struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
