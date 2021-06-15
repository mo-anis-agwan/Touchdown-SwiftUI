//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Anis on 22/05/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
