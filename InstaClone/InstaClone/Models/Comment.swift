//
//  Comment.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import Foundation


struct Comment {
    var id: UUID = UUID()
    var owner: Person
   // var respondingTo: Person
    var respondingId: UUID
    var respsonses: [Comment]?
    var text: String
    var likeCount: Int = Int.random(in: 1..<75)
}
