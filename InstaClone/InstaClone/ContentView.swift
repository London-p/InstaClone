//
//  ContentView.swift
//  InstaClone
//
//  Created by London Petway on 3/27/21.
//

import SwiftUI
import Amplify
import Combine
struct ContentView: View {
    @EnvironmentObject var store: Store
    @StateObject var vm: FollowingBodyModel = FollowingBodyModel()
    
   @State private var liked = false
    
    var body: some View {
        
        GeometryReader{ geometry in
            let colWidth = geometry.size.width / 3
            
        
                TabView{
                    NavigationView{
                        VStack{
                           
                            NavView(colWidth: colWidth)
                            ScrollView{
                                
                                StoryView(people: store.following)
                                
                                LazyVStack(alignment: .leading) {
                                    ForEach(store.following, id: \.id) { person in
                                        PeopleContentView(person: person)
                                        
                                        Image(vm.getContentOfOwners(ownerId: person.id)?.image ?? "")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                        
                                        PersonLikeBarView(colWidth: colWidth, person: person, liked: $liked)
                                        PersonFooterView(content: vm.getContentOfOwners(ownerId: person.id), person: person, liked: $liked)
                            }
                                }
                                .onAppear {
                                    vm.setContentOfOwners(owners: store.following)
                                        }
                                
                                    
                            }
                                }
                            
                        
                        .navigationBarHidden(true)
                    }
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                    NavigationView{
                        VStack{
                            SearchView()
                            
                            
                        }
                        .navigationBarHidden(true)
                    }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                    NavigationView{
                        VStack {
                            Button(action: {print("hello")}, label: {
                                Text("Upload A Photo")
                                    .frame(width: 312, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(128.0)
                                    .padding(.top, 10)
                            })
                        }
                    }
                    .tabItem {
                        Image(systemName: "camera")
                    }
                    NavigationView{
                        VStack {
                        NotificationsView()
                        
                            Spacer()
                        }
                        .navigationBarHidden(true)
                            
                        }
                        .navigationBarHidden(true)
                    
                    .tabItem {
                        Image(systemName: "heart")
                    }
                    NavigationView{
                        ScrollView {
                            VStack {
                                ProfileHeaderView()
                                ProfileMiddleView()
                                
                                
                                
                                
                                Spacer()
                            }
                            
                        }
                        .navigationBarHidden(true)
                    }
                    
                    .tabItem {
                        Image(systemName: "person")
                    }
                    }
                }
            }
        }



   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }


