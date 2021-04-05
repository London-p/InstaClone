//
//  ApiService.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import Foundation


class ApiService {
    static let personApi = PersonApi()
    static let commentsApi = CommentsApi()
    static let contentApi = ContentApi()
    
    
}


class ContentApi {
    fileprivate static var content: [UserContent] = [
        UserContent(image: "mrglasses", desc: "Isn't this cool", owner:
                        PersonApi.people[1], comments: [
                            CommentsApi.comments[1],
                            CommentsApi.comments[0],
                            CommentsApi.comments[4],
    
    ]),
        
        UserContent(image: "LongHair", desc: "Isn't this cool", owner:
                        PersonApi.people[0], comments: [
                            CommentsApi.comments[1],
                            CommentsApi.comments[0],
                            CommentsApi.comments[2],
    
    ]),
        UserContent(image: "That guy", desc: "Isn't this cool", owner:
                        PersonApi.people[2], comments: [
                            CommentsApi.comments[4],
                            CommentsApi.comments[0],
                            CommentsApi.comments[2],
    
    ]),
        
]
    
    func getContentOfOwners(owners: [Person]) -> [UserContent]? {
        ContentApi.content.filter { con in
            owners.contains { owner in
                con.owner.id == owner.id
                
            }
            
        }
    }
}

class PersonApi {
    fileprivate static var people: [Person] = [
        Person(name: "mrglasses"),
        Person(name: "LongHair"),
        Person(name: "That guy"),
        ]
    func getFollowing() -> [Person] {
        return PersonApi.people
    }
    
    func addPerson(person: Person) {
        PersonApi.people.append(person)
    }
    
    func updatePerson(person: Person) {
        var foundPerson = PersonApi.people.first { p in
            p.id == person.id
        }
        foundPerson?.name = person.name
    }
    
}

class CommentsApi {
    fileprivate static var comments: [Comment] = [
        Comment(owner: PersonApi.people[2], respondingId: PersonApi.people[1].id, text: "Nice post"),
        Comment(owner: PersonApi.people[2], respondingId: PersonApi.people[2].id, text: "Nice post"),
        Comment(owner: PersonApi.people[0], respondingId: PersonApi.people[0].id, text: "Nice post"),
        Comment(owner: PersonApi.people[1], respondingId: PersonApi.people[2].id, text: "Nice post"),
        Comment(owner: PersonApi.people[1], respondingId: PersonApi.people[0].id, text: "Nice post"),
    ]
    
    func getComments() -> [Comment] {
        return CommentsApi.comments
    }
    
    func addComment(comment: Comment) {
        CommentsApi.comments.append(comment)
    }
}
