//
//  NotificationsView.swift
//  InstaClone
//
//  Created by London Petway on 4/22/21.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack{
            Text("Notifications")
                .font(.system(size: 25))
            Text("_____________________________________________")
                .foregroundColor(.gray)
            
            ForEach(0..<3) { _ in
                HStack {
                    Image("mrglasses")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90)
                        .clipShape(Circle())
                        
                        Text("mrglasses liked your post")
                            .bold()
                    Spacer()
                }
            }
        Spacer()
            }
        
        
    }
}


struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
