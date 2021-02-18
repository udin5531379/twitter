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
    @Environment(\.presentationMode) var presentationMode
    @State var image : Image = Image("user")
    @State var showImagePicker : Bool = false
    
    var body: some View {
        ZStack {
            
            Image("backg")
                .resizable()
            
            ScrollView(showsIndicators: false) {
                VStack{
                    VStack{
                        Button(action: {
                            showImagePicker.toggle()
                        }, label: {
                            image
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.white)
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                        }).sheet(isPresented: $showImagePicker, content: {
                            
                        })
                            
                                    ZStack(alignment: .leading) {
                                    
                                    TextField("Email", text: $email)
                                        .padding()
                                        .padding(.leading, 30)
                                        .background(Color(.init(white: 1.0, alpha: 0.3)))
                                        .foregroundColor(Color.black)
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
                                        .padding(.leading, 13)
                                    
                                }
                            
                            
                            ZStack(alignment: .leading) {
                                TextField("Username", text: $username)
                                    .padding()
                                    .padding(.leading, 30)
                                    .foregroundColor(Color.black)
                                    .background(Color(.init(white: 1.0, alpha: 0.3)))
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .cornerRadius(10)
                                    .frame(width: UIScreen.main.bounds.width - 50)
                                    .padding(.top, 5)
                                
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color.white)
                                    .frame(width: 20, height: 23, alignment: .leading)
                                    .padding(.horizontal)
                                    .padding(.leading, 1)
                            }
                            
                            ZStack(alignment: .leading) {
                                
                                SecureField("Password", text: $password)
                                    .padding()
                                    .padding(.leading, 30)
                                    .background(Color(.init(white: 1.0, alpha: 0.3)))
                                    .foregroundColor(Color.black)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .cornerRadius(10)
                                    .frame(width: UIScreen.main.bounds.width - 50)
                                    .padding(.top, 5)
                                
                                Image(systemName: "lock.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color.white)
                                    .frame(width: 23, height: 25, alignment: .leading)
                                    .padding(.horizontal)
                                    .padding(.leading, 1)
                                
                            }
                            
                            ZStack(alignment: .leading) {
                                
                                SecureField("Re-type Password", text: $retypePassword)
                                    .padding()
                                    .padding(.leading, 30)
                                    .background(Color(.init(white: 1.0, alpha: 0.3)))
                                    .foregroundColor(Color.black)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .cornerRadius(10)
                                    .frame(width: UIScreen.main.bounds.width - 50)
                                    .padding(.top, 5)
                                    
                                
                                Image(systemName: "lock.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(Color.white)
                                    .frame(width: 23, height: 25, alignment: .leading)
                                    .padding(.horizontal)
                                    .padding(.leading, 1)
                                
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

                            
                        if UIScreen.main.bounds.height <= 1000 {
                            Spacer()
                        }
                    }.animation(.spring())
                    .padding(.bottom, keyboard.currentHeight)
                    
                    Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Have an account? \(Text("Sign In").fontWeight(.bold))")
                                .foregroundColor(Color.white)
                        }).edgesIgnoringSafeArea(.bottom)
                        .padding(.bottom, 70)
                    
                }.padding(.top, 120)
            }
                
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
