//
//  FilterButtonView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/9/21.
//

import SwiftUI

enum TweetFilterOption: Int, CaseIterable {
    case tweet
    case replies
    case like
    
    var title : String {
        switch self {
            case .tweet: return "Tweets"
            case .replies: return "Tweets & Replies"
            case .like: return "Likes"
        }
    }
}

struct FilterButtonView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @Binding var selectedOptions : TweetFilterOption
    var width = UIScreen.main.bounds.width / CGFloat(TweetFilterOption.allCases.count)
    
    var padding : CGFloat {
        let rawValue = CGFloat(selectedOptions.rawValue)
        let count = CGFloat(TweetFilterOption.allCases.count)
        
        return ((UIScreen.main.bounds.width / count ) * rawValue) + 12
    }
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                
                ForEach(TweetFilterOption.allCases, id: \.self) { options in
                    Button(action: {
                        self.selectedOptions = options
                        
                    }, label: {
                        Text(options.title)
                            .frame(width: width, height: 30, alignment: .center)
                            .foregroundColor(selectedOptions.title == options.title ? (colorScheme == .dark ? Color.white : Color.black) : .gray)
    
                        })
                    }
            }
        
            Rectangle()
                .background(Color.gray)
                .frame(width: width - 10, height: 3, alignment: .center)
                .padding(.leading, padding)
                .animation(.spring())
                
                
        
            
        
        }.padding(.top, 10)
    
    }
    
    
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(selectedOptions: .constant(.tweet))
    }
}
