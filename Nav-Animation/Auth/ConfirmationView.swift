//
//  ConfirmationView.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct ConfirmationView: View {
    @State var isPresented = false
    
    let showLogin: () -> Void
    
    var body: some View {
        VStack {
            InputField(placeholder: "Confirmation code", text: .constant(""))
            
            Button("Confirm", action: showLogin)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
            
        }
        .padding(.horizontal)
    }
}

struct ConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView {}
    }
}
