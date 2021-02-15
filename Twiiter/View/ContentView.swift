//
//  ContentView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var isLoginViewPresent: Bool = false
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
            .navigationBarItems(leading: Button(action: {
                isLoginViewPresent.toggle()
            }, label: {
                Text("Login")
            }))
            .sheet(isPresented: $isLoginViewPresent, content: {
                LoginView(username: "", password: "")
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
