//
//  e_commerceApp.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

@main
struct e_commerceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
            // access the properties of this shop class anywhere
        }
    }
}
