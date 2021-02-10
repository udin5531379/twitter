//
//  Message.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 1/22/21.
//

import SwiftUI

struct MockMessage: Identifiable {
    let id : Int
    let imageName : String
    let messageText : String
    let isCurrentUser: Bool
    
}

let mockMessages : [MockMessage] = [
    .init(id: 01, imageName: "spiderman", messageText: "Hey Whats up ?", isCurrentUser: true),
    .init(id: 02, imageName: "batman", messageText: "Nothing man whats up with you ?", isCurrentUser: false),
    .init(id: 03, imageName: "venom-10", messageText: "I am coming for you peter parker", isCurrentUser: false),
    .init(id: 04, imageName: "spiderman", messageText: "Bring it on venom !!!", isCurrentUser: true)

]
