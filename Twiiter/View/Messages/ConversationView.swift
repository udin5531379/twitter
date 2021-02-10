//
//  ConversationView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/30/20.
//

import SwiftUI

struct ConversationView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            //NavigationLink chahe active(Chat view ma transfer garney link chaeh active) when isActive is true ie. showChat is True
            
            NavigationLink(destination: ChatView(), isActive: $showChat){}
            
            ScrollView{
                VStack(alignment: .leading){
                    ForEach(1..<10) { _ in
                        HStack{Spacer()}
                        
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
                            })
                        
                        Divider()
                      }
                }.padding(.leading)
                .padding(.trailing)
                .padding(.top)
                
                
             }
            
            Button(action: {isShowingNewMessageView.toggle()}, label: {
                Image(systemName: "envelope")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .padding()
            })
            .background(Color(red: 32 / 255, green: 156 / 255, blue: 234 / 255))
            .foregroundColor(Color(.white))
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView, content: {
                NewMessageViewForMessageTab(show: $isShowingNewMessageView, showChat: $showChat)
            })
            
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
