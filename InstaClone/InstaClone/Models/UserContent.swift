//
//  UserContent.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import Foundation


struct UserContent {
    var id: UUID = UUID()
    var image: String
    var desc: String
    var owner: Person
    var likeCount: Int = Int.random(in: 1..<75)
    var comments: [Comment]?
}
