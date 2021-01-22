//
//  UserCell.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/22/20.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("venom-10")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
            
            VStack(alignment: .leading){
                Text("Venom")
                    .font(.system(size: 16))
                    .bold()
                
                Text("Eddie Brock")
                    .font(.system(size: 14))
            }
            
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
