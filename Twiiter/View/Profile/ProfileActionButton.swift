//
//  ProfileActionButton.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/9/21.
//

import SwiftUI

struct ProfileActionButton: View {
    @Environment(\.colorScheme) var colorScheme
    let isLoggedIn : Bool
    let dimensions = UIScreen.main.bounds
    var body: some View {
        if isLoggedIn {
            VStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Edit Profile")
                }).frame(width: dimensions.width - 50, height: 50)
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 1))
                
                
            }
            
            
        } else {
            VStack{
                HStack(spacing: 20){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Edit Profile")
                    }).frame(width: dimensions.width - 240, height: 50)
                    .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 25)
                                .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 1))
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Message")
                    }).frame(width: dimensions.width - 240, height: 50)
                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                    .background(RoundedRectangle(cornerRadius: 25))
                    
                    
                }
             }
            
            
            
        }
        
    }
}

struct ProfileActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButton(isLoggedIn: false)
    }
}
