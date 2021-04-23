//
//  StoryView.swift
//  InstaClone
//
//  Created by London Petway on 3/29/21.
//

import SwiftUI

struct StoryView: View {
    
    var people: [Person]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
            
                NavigationLink(destination: StoryVidView()) {

                VStack {
                
                    
                        Image(systemName: "person.crop.circle.badge.checkmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 65)
                            .foregroundColor(.gray)
                        Text("  Your Story")
                            .foregroundColor(.black)
                    }
                }
            
                
            ForEach(people, id: \.id) { person in
                VStack{
                    NavigationLink(destination: StoryVidView()) {
                        VStack {
                    Image(person.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                        .clipShape(Circle())
                    Text(person.name)
                        .foregroundColor(.black)
                        }
            }
                }
            }
    }
        }
    }
    }



