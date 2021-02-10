//
//  ChatView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/31/20.
//

import SwiftUI
import UIKit

struct ChatView: View {
    @State var messageText: String = ""
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    ForEach(mockMessages) { messages in
                        ActualChatView(messages: messages)
                     }
                 }.padding(.top)
                
            }.onTapGesture {
                endEditing()
            }
            
            ChatTextFieldView(messageText: $messageText) //ChatView(parentView) bata childView ma jancha which is ChatTextField ani tya ko messageText sanga bind huncha so that "Send" button Thichda cahahe parentView Actually comes to play.
                
        }.navigationBarTitle("Chats", displayMode: .inline)
        
        
    }
    
    func endEditing(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for:nil)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}


