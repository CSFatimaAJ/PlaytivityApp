//
//  ContentView.swift
//  login
//
//  Created by Asma Abdulkreem on 06/04/1444 AH.
//

import SwiftUI
import AuthenticationServices

struct LogIn: View {
    @State private var email  = ""
    @State private var password = ""
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("sky")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width:geo.size.width, height: geo.size.height,alignment: .center)
                    .opacity(1.8)
                
            }
            VStack {
                
                Button(action:{
                    print("skip")},label: {Text("Skip")
                            .foregroundColor(Color(hue: 0.619, saturation: 0.931, brightness: 0.384))
                            .frame(width: 650, height: 50)
                            .font(.system(size: 20, weight: .bold,design: .rounded))
                            .offset(x: 12, y: -10)
                    })
            }
            
            VStack (alignment: .center,spacing :23){
                Text("Welcome Back")
                    .foregroundColor(Color(red: 0.027, green: 0.128, blue: 0.384))
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: 8, y: 180)
                
                
                
                
                VStack (alignment: .center,spacing :5){
                    TextField ("Email", text: $email )
                        .offset(x: 25, y: 200)
                        .frame(width: 300, height: 50)
                    
                    Rectangle()
                        .frame(width: 300, height: 1)
                        .foregroundColor(Color(red: 0.032, green: 0.637, blue: 0.826))
                        .offset(x: 25, y: 200)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    TextField ("Password", text: $password )
                        .offset(x: 25, y: 200)
                        .frame(width: 300, height: 50)
                    
                    Rectangle()
                        .frame(width: 300, height: 1)
                        .foregroundColor(Color(red: 0.046, green: 0.633, blue: 0.826))
                        .offset(x: 25, y: 200)
                }.padding(.leading)
                    .padding(.trailing,35)
                VStack(alignment:.center,spacing: 8){
                    Button {
                        // Log in
                    } label: {
                        Text(" Log in")
                            .bold()
                            .offset(x: 25, y: 200)
                            .frame(maxWidth: 350,maxHeight: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .fill(Color(red: 0.032, green: 0.637, blue: 0.826))
                                    .offset(x: 20, y: 200)
                                    .padding(1.8)
                                
                            )
        
                            .foregroundColor(.white)
                    }
                    
                    SignInWithAppleButton(.signIn) { request in
                        request.requestedScopes = [.fullName, .email]
                    } onCompletion: { result in
                        switch result {
                        case .success(let authResults):
                            print("Authorisation successful")
                        case .failure(let error):
                            print("Authorisation failed(error.localizedDescription)")
                        }
                    }.frame(height: 50)// black button
                    //.signInWithAppleButtonStyle(.black)
                    // white button
                    // .signInWithAppleButtonStyle(.white)
                    // white with border
                    //.signInWithAppleButtonStyle(.whiteOutline)
                      //  .padding(0.0)
                      .offset(x: 20, y: 200)
                      .frame(width: 350,height: 60)
                    Button {
                        // login
                    } label: {
                        Text("Don’t have an account ? Sign Up")
                            .multilineTextAlignment(.center)
                            .bold()
                            .offset(x: 26, y: 223)
                            .foregroundColor(Color(red: 0.046, green: 0.633, blue: 0.826))
                            .padding(.bottom, 3.0)
                            .frame(height: 1.0)
                            
                            
                            
                    }
                }.padding(.vertical)
                    .padding(.trailing,30)
                
   
            }
            
        }
        
    }
    
    
    
    
    
    
    struct LogIn_Previews: PreviewProvider {
        static var previews: some View {
            LogIn()
        }
    }
    
}
