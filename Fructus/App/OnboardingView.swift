//
//  OnboardingView.swift
//  Fructus
//
//  Created by Dawid Kubicki on 02/03/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
