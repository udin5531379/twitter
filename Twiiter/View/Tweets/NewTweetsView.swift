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
    @State var tweetStatus: String = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top , spacing: 12) {
                    Image("batman")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .padding(.top)
                    
                    
                    PlaceHolder(placeholderText: "What's on your mind ?", text: $tweetStatus)
                        .foregroundColor(.primary)
                        .frame(width: UIScreen.main.bounds.width - 150, height: 100)
                        .padding(.horizontal, 5)
                        .padding(.top, 10)
                        
                    
                    
                    
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                .navigationBarItems(leading: Button(action: {
                    isPresented.toggle()
                }, label: {
                    Text("Cancel")
                })).foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                
                Divider()
                    .padding(.top, 40)
                
                VStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Tweet")
                    }).padding(.all, 15)
                    .padding(.horizontal, 10)
                    .background(colorScheme == .dark ? Color.white : Color.black)
                    .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                    .clipShape(Capsule())
                    .padding(.top, 30)
                }.frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct NewTweetsView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetsView(isPresented: .constant(false), tweetStatus: "")
    }
}
