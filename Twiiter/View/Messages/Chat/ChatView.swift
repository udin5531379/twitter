//
//  ChatView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/31/20.
//

import SwiftUI

struct ChatView: View {
    @State var messageText : String = ""
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    ForEach(1..<20) { _ in
                        HStack{
                            Spacer()
                            Text("Hello World")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .clipShape(ChatBubble(isFromCurrentUser: true))
                                .padding(.trailing)
                        }
                     }
                    
                }
            }
            
            ChatTextFieldView(messageText: $messageText) //ChatView(parentView) bata childView ma jancha which is ChatTextField ani tya ko messageText sanga bind huncha so that "Send" button Thichda cahahe parentView Actually comes to play.
                
        }.navigationBarTitle("Chats", displayMode: .inline)
        
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(messageText: "")
    }
}
