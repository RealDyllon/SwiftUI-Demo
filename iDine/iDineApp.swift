//
//  iDineApp.swift
//  iDine
//
//  Created by Dyllon on 29/5/21.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}


