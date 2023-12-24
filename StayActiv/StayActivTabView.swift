//
//  StayActivTabView.swift
//  StayActiv
//
//  Created by Divyansh Bhardwaj on 25/12/23.
//

import SwiftUI

struct StayActivTabView: View {
    @EnvironmentObject var manager: HealthManager
    @State var selectedTab = "Home"
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName: "house")
                }
                .environmentObject(manager)
            
            ContentView()
                .tag("Content")
                .tabItem{
                    Image(systemName: "person")
                }
        }
    }
}

#Preview {
    StayActivTabView()
}
