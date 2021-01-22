//
//  ContentView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/14/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            TabView{
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                     }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                      }
                
                ConversationView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Message")
                      }
            }
            .navigationBarTitle("Home")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
