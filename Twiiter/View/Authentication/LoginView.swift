//
//  LoginView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/12/21.
//

import SwiftUI

struct LoginView: View {
    @State var username: String
    @State var password: String
    @State var isRegistrationActive: Bool = false
    @State var value : CGFloat = 0
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                NavigationLink(
                    destination: RegistrationView(email: "", username: "", password: "", retypePassword: ""),
                    isActive: $isRegistrationActive,
                    label: {
                        Text("")
                    })
                
                Color.black
                
                VStack{
                    Image("twitter")
                        .resizable()
                        .frame(width: 150, height: 130)
                        .aspectRatio(contentMode: .fit)
                    
                    ZStack(alignment: .leading) {
                        
                        TextField("Username", text: $username)
                            .padding()
                            .padding(.leading, 30)
                            .background(Color(.init(white: 1.0, alpha: 0.3)))
                            .foregroundColor(Color.white)
                            .textFieldStyle(PlainTextFieldStyle())
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top)
                            
                        
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                            .frame(width: 23, height: 25, alignment: .leading)
                            .padding(.top)
                            .padding(.leading, 7)
                        
                    }
                    
                    ZStack(alignment: .leading) {
                        SecureField("Password", text: $password)
                            .padding()
                            .padding(.leading, 30)
                            .foregroundColor(Color.white)
                            .background(Color(.init(white: 1.0, alpha: 0.3)))
                            .textFieldStyle(PlainTextFieldStyle())
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top)
                        
                        Image(systemName: "lock.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                            .frame(width: 20, height: 23, alignment: .leading)
                            .padding(.top)
                            .padding(.leading, 10)
                    }
                    
                    HStack{
                        Button(action: {}, label: {
                            Text("Forgot Password ?")
                                .foregroundColor(Color.white)
                        })
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal, 20)
                    .padding([.top, .bottom])
                    
                    Button(action: {}, label: {
                        Text("Sign In")
                            .fontWeight(.bold)
                    }).padding()
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .clipShape(Capsule())

                    
                    Spacer()
                    
                    Button(action: {
                        isRegistrationActive.toggle()
                     }, label: {
                        Text("Don't have an account? \(Text("Sign Up!").fontWeight(.bold))")
                            .foregroundColor(Color.white)
                    }).padding(.bottom, 50)
                    
                }.padding(.top, 70)
                
             
            }.edgesIgnoringSafeArea(.all)
        }
    }
    

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(username: "hello", password: "123")
    }
}
