//
//  InstaCloneApp.swift
//  InstaClone
//
//  Created by London Petway on 3/27/21.
//

import SwiftUI


@main
struct InstaCloneApp: App {

    
    
    var body: some Scene {
        
        WindowGroup {
        
            
            ContentView()
                .environmentObject(Store())
            
        }
        }
}


class Store: ObservableObject {
    @Published var following: [Person]
    
    
    init() {
        following = ApiService.personApi.getFollowing()
     
        
    
    }
}

