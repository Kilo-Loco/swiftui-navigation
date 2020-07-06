//
//  AppView.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    @State var isLoggedIn = false
    
    var body: some View {
        VStack {
            if isLoggedIn {
                SessionView()
                    .pushTransition()
            } else {
                AuthView(startSession: toggleSession)
                    .pushTransition()
            }
        }
    }
    
    func toggleSession() {
        withAnimation {
            self.isLoggedIn = true
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
