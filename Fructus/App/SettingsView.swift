//
//  SettingsView.swift
//  Fructus
//
//  Created by Dawid Kubicki on 10/03/2021.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: - Section 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have choleresterol. Fruits are just very good for your health")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: - Section 2
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish, you can restart, the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            Text("Restart".uppercased())
                        }
                    }
                    
                    //MARK: - Section 3
                    GroupBox(
                    label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Dawid")
                        SettingsRowView(name: "Designer", content: "Dawid")
                        SettingsRowView(name: "Ccompatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "Skytask website", linkDestinantion: "skytask.io")
                    }//: Box
                    
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        }
                )
                .padding()
            }//: ScrollView
        }//: Navigation
    }
}


//MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
