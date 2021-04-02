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
    
    @Published var comment: [Comment]
    init() {
        following = ApiService.personApi.getFollowing()
        comment = ApiService.commentsApi.getComments()
        
        
    }
}
