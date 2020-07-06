//
//  InputField.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct InputField: View {
    
    let placeholder: String
    var text: Binding<String>
    
    var body: some View {
        TextField(placeholder, text: text)
            .padding()
            .background(Color.init(white: 0.93))
    }
}

struct InputField_Previews: PreviewProvider {
    static var previews: some View {
        InputField(placeholder: "Username", text: .constant(""))
    }
}
