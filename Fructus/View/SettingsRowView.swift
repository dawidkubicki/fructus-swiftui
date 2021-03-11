//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Dawid Kubicki on 11/03/2021.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestinantion: String? = nil
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestinantion != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestinantion!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }//:HStack
            .padding(.vertical, 2)
        }
    }
}

//MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Dawid")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "skytask", linkDestinantion: "skytask.io")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
