//
//  View+Extensions.swift
//  Nav-Animation
//
//  Created by Lee, Kyle on 7/6/20.
//  Copyright © 2020 Lee, Kyle. All rights reserved.
//

import SwiftUI

extension View {
    @inlinable public func pushTransition() -> some View {
        self.transition(.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading))
        )
    }
}
