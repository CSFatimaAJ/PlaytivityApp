//
//  ContentView.swift
//  SignUp
//
//  Created by Lamia AlSiddiqi on 02/04/1444 AH.
//

import SwiftUI
import AuthenticationServices

struct SignUp: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        ZStack {
            Image("Sign Up")
                .resizable()
                .frame(width: 392.0, height: 845.0)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                Button {
                    // Skip
                } label: {
                    Text("Skip")
                        .bold()
                        .foregroundColor(Color(red: 0.011, green: 0.056, blue: 0.176))
                        .padding(.bottom, 3.0)
                        .offset(x: 135, y: -147)
                }
                
                Text("Creat a new account")
                    .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.826))
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .padding(0.0)
                    .offset(x: 1, y: -39)
                
                Group {
                    TextField("Name", text: $name)
                        .foregroundColor(.gray)
                        .textFieldStyle(.plain)
                        .placeholder(when: name.isEmpty) {
                            Text("Name")
                                .foregroundColor(.gray)
                            
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.826))
                    
                    
                    TextField("Email", text: $email)
                        .foregroundColor(.gray)
                        .textFieldStyle(.plain)
                        .placeholder(when: email.isEmpty) {
                            Text("Email")
                                .foregroundColor(.gray)
                            
                            
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.826))
                    
                    
                    
                    SecureField("Password", text: $password)
                        .foregroundColor(.gray)
                        .textFieldStyle(.plain)
                        .placeholder(when: password.isEmpty) {
                            Text("Password")
                                .foregroundColor(.gray)
                            
                            
                        }
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.826))
                    
                    SecureField("Confirm Password", text: $confirmPassword)
                        .foregroundColor(.gray)
                        .textFieldStyle(.plain)
                        .placeholder(when: confirmPassword.isEmpty) {
                            Text("Confirm Password")
                                .foregroundColor(.gray)
                            
                        }
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.826))
                            
                        }
                    
                    Button {
                        // sign up
                    } label: {
                        Text("Sign Up")
                            .bold()
                            .frame(maxWidth: .infinity,maxHeight: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 6, style: .continuous)
                                    .fill(Color(red: 0.047, green: 0.641, blue: 0.826))
                                
                            )
                            .foregroundColor(.white)
                    }
                    
                    SignInWithAppleButton(.signUp) { request in
                        request.requestedScopes = [.fullName, .email]
                    } onCompletion: { result in
                        switch result {
                        case .success(let authResults):
                            print("Authorisation successful")
                        case .failure(let error):
                            print("Authorisation failed\(error.localizedDescription)")
                        }
                    }.frame(height: 50)// black button
                    //.signInWithAppleButtonStyle(.black)
                    // white button
                    // .signInWithAppleButtonStyle(.white)
                    // white with border
                    //.signInWithAppleButtonStyle(.whiteOutline)
                    
                    
                    Button {
                        // login
                    } label: {
                        Text("Already have an account? Login")
                            .bold()
                            .foregroundColor(Color(red: 0.047, green: 0.641, blue: 0.826))
                            .padding(.bottom, 3.0)
                    }
                   
                }
                
                .padding()
                
                
                
                
            }
            //.frame(width: 90.0)
            .padding()
            
            
        }
        
        
        
    }
    
    
    
    struct SignUp_Previews: PreviewProvider {
        static var previews: some View {
            SignUp()
        }
    }
    
    
    extension View {
        func placeholder<content: View>(
            when shouldShow: Bool,
            alignment: Alignment = .leading,
            @ViewBuilder placeholder: () -> content) -> some View {
                
                ZStack(alignment: alignment) {
                    
                    placeholder().opacity(shouldShow ? 1 : 0)
                    self
                    
                    
                }
            }
    }
    
