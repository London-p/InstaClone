//
//  InstaCloneApp.swift
//  InstaClone
//
//  Created by London Petway on 3/27/21.
//

import SwiftUI
import Amplify
import AWSDataStorePlugin
//import AWSAPIPlugin // UNCOMMENT this line once backend is deployed
@main
struct InstaCloneApp: App {
   
    init() {
        configureAmplify()
    }
    
    var body: some Scene { 
        
        WindowGroup {
        
            
            ContentView()
                .environmentObject(Store())
            
        }
        }
}


private func configureAmplify() {
    
        let dataStorePlugin = AWSDataStorePlugin(modelRegistration: AmplifyModels())
        //let apiPlugin = AWSAPIPlugin(modelRegistration: AmplifyModels()) // UNCOMMENT this line once backend is deployed
      
        do {
            try Amplify.add(plugin: dataStorePlugin)
            //try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            
            //try Amplify.add(plugin: apiPlugin) // UNCOMMENT this line once backend is deployed
            try Amplify.configure()
            print("Initialized Amplify");
        } catch {
            print("Could not initialize Amplify: \(error)")
            
        }
        
    }
    
    


class Store: ObservableObject {
    @Published var following: [Person]
    
    
    init() {
        following = ApiService.personApi.getFollowing()
     
        
    
    }
}

    
