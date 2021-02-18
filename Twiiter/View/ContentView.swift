//
//  ContentView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 12/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var isLoginViewPresent: Bool = false
    @State var selectedTab = "FeedView"
    var tabs = ["FeedView", "SearchView", "ConversationView"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    //location for each Curve
    @State var xAxis: CGFloat = 0
    
    var body: some View {
       
            NavigationView{
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                    TabView(selection: $selectedTab){
                        FeedView()
                            .tabItem {
                                Image(systemName: "house")
                                Text("Home")
                             }
                            .tag("FeedView")
                        
                        SearchView()
                            .tabItem {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                              }
                            .tag("SearchView")
                        
                        ConversationView()
                            .tabItem {
                                Image(systemName: "envelope")
                                Text("Message")
                              }
                            .tag("ConversationView")
                    }
                    .navigationBarTitle("Home")
                    .navigationBarItems(leading: Button(action: {
                        isLoginViewPresent.toggle()
                    }, label: {
                        Text("Login")
                    }))
                    .fullScreenCover(isPresented: $isLoginViewPresent, content: {
                        LoginView(username: "", password: "")
                })
                    //custom tab bar creation by hiding the default tab bar and setting the Zindex to center-bottom
                    HStack(spacing: 0){
                        
                        ForEach(tabs, id: \.self) { image in
                            
                            GeometryReader { reader in
                                Button(action: {
                                    withAnimation(.spring()){
                                        selectedTab = image
                                        xAxis = reader.frame(in: .global).minX
                                    }
                                }, label: {
                                    Image(image)
                                        .resizable()
                                        .renderingMode(.template)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(selectedTab == image ? getColor(image: image) : Color.white)
                                        .padding(selectedTab == image ? 15 : 0)
                                        
                                        .background(Color.init(red: 202/255, green: 234/255, blue: 1, opacity: 1).opacity(selectedTab == image ? 1 : 0))
                                        .clipShape(Circle())
                                        .offset(x: (reader.frame(in: .global).minX) - (reader.frame(in: .global).midX),y: selectedTab == image ? -45 : 0)
                                        
                                        
                                }).onAppear(perform: {
                                    if image == tabs.first {
                                        xAxis = reader.frame(in: .global).minX
                                    }
                                })
                                
                            }.frame(width: 25, height: 25)
                            
                            if image != tabs.last {
                                Spacer(minLength: 0)
                            }
                        }
                     }.padding(.horizontal, 20)
                    .padding(.vertical)
                    .background(Color.init(red: 113/255, green: 201/255, blue: 242/255, opacity: 1).clipShape(CustomShapeForTabBar(xAxis: xAxis)).cornerRadius(12))
                    
                    .padding(.horizontal)
                    //padding on the bottom edge
                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                    
                    
                }.ignoresSafeArea(.all, edges: .bottom)
                
            }
    }
    
    func getColor(image: String) -> Color {
        switch image {
        case "FeedView":
            return Color.orange
        
        case "SearchView":
            return Color.orange
        
        default:
            return Color.orange
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
