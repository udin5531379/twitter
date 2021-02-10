//
//  ActualChatView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 1/25/21.
//

import SwiftUI

struct ActualChatView: View {
    let messages : MockMessage
    var body: some View {
        HStack{
            if messages.isCurrentUser {
                Spacer()
                Text(messages.messageText)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .clipShape(ChatBubble(isFromCurrentUser: messages.isCurrentUser))
                    .padding(.trailing)
                
            } else {
                HStack{
                    Image(messages.imageName)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    
                    Text(messages.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .foregroundColor(Color.black)
                        .clipShape(ChatBubble(isFromCurrentUser: messages.isCurrentUser))
                        .padding(.trailing)
                    Spacer()
                }.padding(.horizontal)
                
            }
            
        }
    }
}

struct ActualChatView_Previews: PreviewProvider {
    static var previews: some View {
        ActualChatView(messages: mockMessages[0])
        
    }
}
