//
//  FollowingBodyModel.swift
//  InstaClone
//
//  Created by London Petway on 3/31/21.
//

import Foundation


class FollowingBodyModel: ObservableObject {
    @Published var content: [UserContent]?
    
    func setContentOfOwners(owners: [Person]) {
        self.content = ApiService.contentApi.getContentOfOwners(owners: owners)
    }
    func getContentOfOwners(ownerId: UUID) -> UserContent? {
        if let content = content {
            return content.first { con in
                con.owner.id == ownerId
            }
        }
        return nil
    }
}
