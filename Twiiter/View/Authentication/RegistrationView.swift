//
//  RegistrationView.swift
//  Twiiter
//
//  Created by Udin Rajkarnikar on 2/12/21.
//

import SwiftUI



struct RegistrationView: View {
    @State var email: String
    @State var username: String
    @State var password: String
    @State var retypePassword: String
    @State var value : CGFloat = 0
    @ObservedObject private var keyboard = KeyboardResponder()
    
    var body: some View {
        ZStack {
            
            Color.black
            
            VStack{
                    Image("twitter")
                        .resizable()
                        .frame(width: 150, height: 130)
                        .aspectRatio(contentMode: .fit)
                    
                    
                        VStack{
                            ZStack(alignment: .leading) {
                            
                            TextField("Email", text: $email)
                                .padding()
                                .padding(.leading, 30)
                                .background(Color(.init(white: 1.0, alpha: 0.3)))
                                .foregroundColor(Color.white)
                                .textFieldStyle(PlainTextFieldStyle())
                                .cornerRadius(10)
                                .frame(width: UIScreen.main.bounds.width - 50)
                                .padding(.top)
                                .disableAutocorrection(true)
                                .keyboardType(.emailAddress)
                            
                            Image(systemName: "envelope.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.white)
                                .frame(width: 23, height: 25, alignment: .leading)
                                .padding(.top)
                                .padding(.leading, 7)
                            
                        }
                    
                    
                    ZStack(alignment: .leading) {
                        TextField("Username", text: $username)
                            .padding()
                            .padding(.leading, 30)
                            .foregroundColor(Color.white)
                            .background(Color(.init(white: 1.0, alpha: 0.3)))
                            .textFieldStyle(PlainTextFieldStyle())
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top)
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                            .frame(width: 20, height: 23, alignment: .leading)
                            .padding(.top)
                            .padding(.leading, 10)
                    }
                    
                    ZStack(alignment: .leading) {
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .padding(.leading, 30)
                            .background(Color(.init(white: 1.0, alpha: 0.3)))
                            .foregroundColor(Color.white)
                            .textFieldStyle(PlainTextFieldStyle())
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top)
                        
                        Image(systemName: "lock.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                            .frame(width: 23, height: 25, alignment: .leading)
                            .padding(.top)
                            .padding(.leading, 7)
                        
                    }
                    
                    ZStack(alignment: .leading) {
                        
                        SecureField("Re-type Password", text: $retypePassword)
                            .padding()
                            .padding(.leading, 30)
                            .background(Color(.init(white: 1.0, alpha: 0.3)))
                            .foregroundColor(Color.white)
                            .textFieldStyle(PlainTextFieldStyle())
                            .cornerRadius(10)
                            .frame(width: UIScreen.main.bounds.width - 50)
                            .padding(.top)
                            
                        
                        Image(systemName: "lock.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                            .frame(width: 23, height: 25, alignment: .leading)
                            .padding(.top)
                            .padding(.leading, 7)
                        
                        }
            }
                    
                    Button(action: {}, label: {
                        Text("Register")
                            .fontWeight(.bold)
                    }).padding()
                    .frame(width: UIScreen.main.bounds.width - 50)
                    .background(Color.white)
                    .foregroundColor(Color.black)
                    .clipShape(Capsule())
                    .padding(.top)

                    
                    Spacer()
                    
                    
                }.padding(.top, 60)
                .edgesIgnoringSafeArea(.bottom)
                .animation(.spring())
            .padding(.bottom, keyboard.currentHeight)
                
            
                
        }.edgesIgnoringSafeArea(.all)
    }
    
    func keyboardHandling() {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (notification) in
            let value = notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
            let height = value.height
            
            self.value = height
        
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (notification) in
            self.value = 0
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(email: "q", username: "q", password: "q", retypePassword: "q")
        }
    }
}
