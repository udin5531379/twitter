//
//  SearchBar.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/22/20.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        HStack{
                TextField("Search", text: $text)
                    .padding(10)
                    .padding(.leading, 20)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color(.lightGray))
                                .padding(.leading, 25)
                        }
                     )
            }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search"))
    }
}
