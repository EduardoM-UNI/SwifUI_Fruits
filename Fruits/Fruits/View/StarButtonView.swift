//
//  StarButtonView.swift
//  Fruits
//
//  Created by Eduardo Monroy Husillos on 25/7/21.
//

import SwiftUI

struct StarButtonView: View {
    
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - BODY
    var body: some View {
        Button(action: {isOnboarding = false}) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }     //: BUTTOM
        .accentColor(.white)
}
}
    // MARK: - PREVIEW
struct StarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StarButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
