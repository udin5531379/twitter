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
        
        VStack(spacing: 0){
                ProfileHeaderView()
                ProfileActionButton(isLoggedIn: true)
                FilterButtonView(selectedOptions: $selectedOptions)
                
                ScrollView{
                    ForEach(0..<9) { _ in
                        TweetCell()
                    }.padding()
                }
        }.navigationBarTitle("Profile", displayMode: .inline)
        .navigationBarHidden(false)
        .padding(.top, 20)
           
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
