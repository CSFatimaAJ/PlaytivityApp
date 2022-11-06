//
//  SplashScreenView.swift
//  SignUp
//
//  Created by Lamia AlSiddiqi on 04/04/1444 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
               Image("Home page")
                    .resizable()
                    .ignoresSafeArea()
            
            VStack {
               
                    
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 2)) {
                        self.size = 1.5
                        self.opacity = 1.0
                    }
                }
            }
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
        }
        
        

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
