//
//  AppView.swift
//  Avocados
//
//  Created by Supapon Pucknavin on 15/10/2565 BE.
//

import SwiftUI

struct AppView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        TabView {
            // AvocadoView
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            // ContentView
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            // RipeningStagesView
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            // SettingsView
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
            
            
            
        }//: TAB VIEW
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

// MARK: - PREVIEW
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
