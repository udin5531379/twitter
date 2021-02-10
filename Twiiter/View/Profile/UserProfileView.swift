//
//  UserProfileView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/9/21.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedOptions : TweetFilterOption = .tweet
    var body: some View {
        
        VStack{
            ProfileHeaderView()
            ProfileActionButton(isLoggedIn: false)
            FilterButtonView(selectedOptions: $selectedOptions)
        }
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
