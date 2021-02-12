//
//  NewTweetsView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/11/21.
//

import SwiftUI

struct NewTweetsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var isPresented : Bool
    var body: some View {
        NavigationView {
            VStack {
                HStack(spacing: 30) {
                    Image("batman")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    Text("What's on your mind ?")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.gray)
                    
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                .navigationBarItems(leading: Button(action: {
                    isPresented.toggle()
                }, label: {
                    Text("Cancel")
                }).foregroundColor(colorScheme == .dark ? Color.white : Color.black),
                trailing: Button(action: {
                    
                }, label: {
                    Text("Tweet")
                }).padding(.all, 15)
                .padding(.horizontal, 10)
                .background(colorScheme == .dark ? Color.white : Color.black)
                .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                .clipShape(Capsule()))
                
                Spacer()
            }
        }
    }
}

struct NewTweetsView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetsView(isPresented: .constant(false))
    }
}
