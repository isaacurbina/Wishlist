//
//  WishlistApp.swift
//  Wishlist
//
//  Created by Isaac Urbina on 2/20/25.
//

import SwiftUI
import SwiftData

@main
struct WishlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.modelContainer(for: Wish.self)
        }
    }
}
