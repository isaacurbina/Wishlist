//
//  Preview.swift
//  Wishlist
//
//  Created by Isaac Urbina on 2/24/25.
//

import Foundation
import SwiftData

struct Preview {
	
	let modelContainer: ModelContainer
	
	init() {
		let config = ModelConfiguration(isStoredInMemoryOnly: true)
		do {
			modelContainer = try ModelContainer(for: Wish.self, configurations: config)
		} catch {
			fatalError("Could not initialize ModelContainer")
		}
	}
	
	func addExamples(_ examples: [Wish]) {
		Task { @MainActor in
			examples.forEach { example in
				modelContainer.mainContext.insert(example)
			}
		}
		
	}
}
