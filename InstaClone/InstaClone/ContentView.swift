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
    //@ObservedObject var sot = SourceOfTruth()
   // var message = Message(name: "London", description: "Hello")
    @StateObject var viewModel = ViewModel()
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
                        VStack {
                            Text("camera")
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


extension ContentView {
    class ViewModel: ObservableObject {
        @Published var newMessageViewIsVisible = false
        @Published var messages = [Message]()
        
         private var tokens = Set<AnyCancellable>()
        private var token: AnyCancellable?
        init() {
            getMessages()
            //createMessage()
        }
        
        func getMessages() {
            Amplify.DataStore.query(Message.self)
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    print(completion)
                } receiveValue: { messages in
                    self.messages = messages
                }
                .store(in: &tokens)
        
            
            
        }
            
             
        func createMessage() {
                let message = Message(
                name: "Lonndon1",
                description: "hello",
                time: nil
                )
                
         token =  Amplify.DataStore.save(message)
                    .receive(on: DispatchQueue.main)
                    .sink { completion in
                        print(completion)
                    } receiveValue: { savedMessage in
                        print("saved")
                    }
                                    
            
            
    }
}
}
   /*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }

*/
