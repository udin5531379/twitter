//
//  TweetCell.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/21/20.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        
        VStack{
            
            HStack(alignment: .top){
                
                Image("batman")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 45, height: 45)
                    .padding(.leading)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Gothams Hero")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 13))
                        
                        Text("@batman")
                            .foregroundColor(Color(.lightGray))
                    }
                    
                     Text("Its not who i am underneath but what i do that defines me")
                        .lineLimit(3)
                        .font(.system(size: 13))
                        .padding(.top, -3)
                    
                    
                }.padding(.trailing)
                
            }
            
            HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "bubble.left")
                            .frame(width: 32, height: 32)
                    })
                
                Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "arrow.2.squarepath")
                            .frame(width: 32, height: 32)
                    })
                
                Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "heart")
                            .frame(width: 32, height: 32)
                    })
                
                Spacer()
                
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "bookmark")
                            .frame(width: 32, height: 32)
                    })
            }.padding(.horizontal, 30)
            .padding(.top, 1)
            .padding(.bottom, 5)
            .foregroundColor(Color(.lightGray))
            Divider()
        }
        
        
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
