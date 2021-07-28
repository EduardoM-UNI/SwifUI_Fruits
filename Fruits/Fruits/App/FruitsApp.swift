//
//  FruitsApp.swift
//  Fruits
//
//  Created by Eduardo Monroy Husillos on 24/7/21.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
