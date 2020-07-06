//
//  LoginView.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var isPresented = false
    
    let didLogin: () -> Void
    let showSignUp: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            
            InputField(placeholder: "Email", text: .constant(""))
            
            InputField(placeholder: "Password", text: .constant(""))
            
            Button("Login", action: didLogin)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
            
            Spacer()
        
            Button("Don't have an account? Sign up.", action: showSignUp)
        }
        .padding(.horizontal)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(didLogin: {}, showSignUp: {})
    }
}
