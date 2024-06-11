//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Fakiya Imangaliyeva on 5/31/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            LinearGradient(colors: [
                .customGreenLight ,
                .customGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
            
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
    
}
