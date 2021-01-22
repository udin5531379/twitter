//
//  SearchView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/22/20.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = "Search"
    var body: some View {
        
        ScrollView{
            SearchBar(text: $searchText)
            
            VStack(alignment: .leading){
                ForEach(0..<15) { _ in
                    HStack{Spacer()}
                    UserCell()
                }
            }.padding(.leading, 25)
        }.padding(.top, 10)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
