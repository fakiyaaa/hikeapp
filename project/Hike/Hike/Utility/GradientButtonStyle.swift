//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Fakiya Imangaliyeva on 6/2/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition? A : B
                configuration.isPressed ?
                // A: when user pressed the Button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)

                // B: when the button is not pressed
                :
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                
            )
            .cornerRadius(40)
    }
}
