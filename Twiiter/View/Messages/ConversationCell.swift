//
//  ConversationCell.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/30/20.
//

import SwiftUI

struct ConversationCell: View {
    @Environment(\.colorScheme) var colorScheme //to detect if the device is in darkMode or not
    
     var body: some View {
        HStack(alignment: .top){
            
            Image("batman")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 45, height: 45)
                .padding(.leading)
            
            VStack(alignment: .leading){
                    
                Text("Gothams Hero")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 13))
                
                
                 Text("This is for the messages kzjfvkjahdfvhkadjfkjvkdjfhvjkadkadjfkvjaadfgljsdfoigjdjfgosiddoifjg")
                    
                    .lineLimit(2)
                    .font(.system(size: 13))
                    .padding(.top, -3)
                    
                
                
            }.padding(.trailing)
            .foregroundColor(colorScheme == .dark ? Color.white : Color.black )
            
            
            
            
            
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
