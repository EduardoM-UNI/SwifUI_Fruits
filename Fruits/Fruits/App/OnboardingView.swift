//
//  OnboardingView.swift
//  Fruits
//
//  Created by Eduardo Monroy Husillos on 25/7/21.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruits] = fruitsData
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) {item in
                
                FruitCardView(fruits: item)
               
            } //: LOOP
            
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
       
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
