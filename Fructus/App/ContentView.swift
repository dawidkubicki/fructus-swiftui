//
//  ContentView.swift
//  Fructus
//
//  Created by Dawid Kubicki on 02/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}