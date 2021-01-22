//
//  FeedView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/21/20.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            ScrollView{
                VStack{
                    ForEach(0..<20){ _ in
                        TweetCell()
                            .padding(.top, 2)
                    }
                }
                
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("Tweet")
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding()
            })
            .background(Color(red: 32 / 255, green: 156 / 255, blue: 234 / 255))
            .foregroundColor(Color(.white))
            .clipShape(Circle())
            .padding()
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
