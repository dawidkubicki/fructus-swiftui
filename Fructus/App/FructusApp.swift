//
//  FructusApp.swift
//  Fructus
//
//  Created by Dawid Kubicki on 02/03/2021.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
