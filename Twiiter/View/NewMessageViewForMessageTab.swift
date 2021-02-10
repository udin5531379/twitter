//
//  NewMessageViewForMessageTab.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/8/21.
//

import SwiftUI

struct NewMessageViewForMessageTab: View {
    
    @State var searchText = ""
    @Binding var show : Bool
    @Binding var showChat : Bool
    
    var body: some View {
        
        ScrollView{
            SearchBar(text: $searchText)
            
            VStack(alignment: .leading){
                ForEach(0..<8) { _ in
                    HStack{Spacer()}
                    Button {
                        self.show.toggle()
                        self.showChat.toggle()
                    } label: {
                        UserCell()
                    }

                }
            }.padding(.leading, 25)
        }.padding(.top, 10)
        
    }
}

struct NewMessageViewForMessageTab_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageViewForMessageTab(show: .constant(false), showChat: .constant(false))
    }
}
