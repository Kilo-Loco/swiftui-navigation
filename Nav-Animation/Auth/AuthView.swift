//
//  AuthView.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct AuthView: View {
    
    @State private var shouldShowLogin = true
    
    let startSession: () -> Void
    
    var body: some View {
        VStack {
            if shouldShowLogin {
                LoginView(
                    didLogin: startSession,
                    showSignUp: toggleLogin
                )
                    .pushTransition()
                
            } else {
                SignUpView(showLogin: toggleLogin)
                    .pushTransition()
            }
        }
    }
    
    func toggleLogin() {
        withAnimation {
            self.shouldShowLogin.toggle()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView(startSession: {})
    }
}
