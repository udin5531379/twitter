//
//  ChatTextFieldView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/31/20.
//

import SwiftUI

struct ChatTextFieldView: View {
    @Binding var messageText: String
    var body: some View {
        VStack{
            Divider()
            HStack{
                TextField("message", text: $messageText)
                    .textFieldStyle(PlainTextFieldStyle())
                    .frame(minHeight: 45)
                    
                   
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Send")
                })
            }.padding(.leading, 10)
            .padding(.trailing, 10)
        }
        
        
    }
}

struct ChatTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ChatTextFieldView(messageText: .constant("message"))
    }
}
