//
//  StayActivApp.swift
//  StayActiv
//
//  Created by Divyansh Bhardwaj on 25/12/23.
//

import SwiftUI

@main
struct StayActivApp: App {
    @StateObject var manager = HealthManager()
    
    var body: some Scene {
        WindowGroup {
            StayActivTabView()
                .environmentObject(manager)
        }
    }
}
