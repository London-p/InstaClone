//
//  ContentView.swift
//  InstaClone
//
//  Created by London Petway on 3/27/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store
    @StateObject var vm: FollowingBodyModel = FollowingBodyModel()
   // var comment: Comment
    
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
                                        
                                        PersonLikeBarView(colWidth: colWidth, person: person)
                                        PersonFooterView(content: vm.getContentOfOwners(ownerId: person.id), person: person)
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
                        VStack{
                            Text("Camera")
                        }
                    }
                    .tabItem {
                        Image(systemName: "camera")
                    }
                    NavigationView{
                        VStack{
                            Text("Notifications")
                                .font(.system(size: 25))
                            Spacer()
                            
                        }
                        .navigationBarHidden(true)
                    }
                    .tabItem {
                        Image(systemName: "heart")
                    }
                    NavigationView{
                        VStack{
                            Text("London")
                                .font(.system(size: 25))
                                .bold()
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100)
                                .foregroundColor(.gray)
                                .padding(.top, 30)
                                .padding(.trailing, 230)
                            Spacer()
                            
                        }
                        .navigationBarHidden(true)
                    }
                    .tabItem {
                        Image(systemName: "person")
                    }
                }
            }
        }

    struct ContentView_Previews: PreviewProvider {
       
        static var previews: some View {
            ContentView()
        }
    }
}

