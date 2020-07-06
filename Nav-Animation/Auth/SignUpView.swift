//
//  SignUpView.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    let showLogin: () -> Void
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                    
                InputField(placeholder: "Email", text: .constant(""))
                
                InputField(placeholder: "Password", text: .constant(""))
                
                InputField(placeholder: "Re-enter password", text: .constant(""))
                
                NavigationButton(
                    title: "Sign Up",
                    destination: ConfirmationView(showLogin: showLogin)
                )
                
                Spacer()
                    .frame(height: 50)
                
                Spacer()
            
                Button("Already have an account? Login.", action: showLogin)
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(showLogin: {})
    }
}
