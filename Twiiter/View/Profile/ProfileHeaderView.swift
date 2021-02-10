//
//  ProfileHeaderView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/9/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .center){
            Image("batman")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
             
            Text("Batman")
                .font(.system(size: 20))
                .bold()
            
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
                
            Text("I am the billionare that runs the Gotham City")
                .padding(.top)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 20){
                VStack {
                    Text("0")
                        .fontWeight(.bold)
                    
                    Text("Followers")
                        .foregroundColor(.gray)
                }
                
                VStack{
                    Text("1")
                        .fontWeight(.bold)
                    
                    Text("Following")
                        .foregroundColor(.gray)
                }
            }.padding()
            
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
