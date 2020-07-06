//
//  NavigationButton.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

struct NavigationButton<Destination: View>: View {
    
    let title: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
        }
    }
}

struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton(title: "Submit", destination: EmptyView())
    }
}
