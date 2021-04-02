//
//  Person.swift
//  InstaClone
//
//  Created by London Petway on 3/29/21.
//

import Foundation


struct Person:Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var content: [UserContent]?
    
}
