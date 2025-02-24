//
//  ContentView.swift
//  Wishlist
//
//  Created by Isaac Urbina on 2/20/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
	
	@Environment(\.modelContext) private var modelContext
	@Query private var wishes: [Wish]
	
	var body: some View {
		NavigationStack {
			List{
				ForEach(wishes) { wish in
					Text(wish.title)
						.font(.title.weight(.light))
						.padding(.vertical, 2)
				}
			}
			.navigationTitle("Wishlist")
			.overlay {
				if wishes.isEmpty {
					ContentUnavailableView(
						"My Wishlist",
						systemImage: "heart.circle",
						description: Text("No wishes yet. Add one to get started."))
				}
			}
		}
	}
}

#Preview("List with Sample Data") {
	let preview = Preview()
	
	preview.addExamples(
		[
			Wish(title: "Master SwiftData"),
			Wish(title: "Buy a new iPhone"),
			Wish(title: "Practice latin dances"),
			Wish(title: "Travel to Europe"),
			Wish(title: "Make a positive impact")
		]
	)
	return ContentView()
		.modelContainer(preview.modelContainer)
}

#Preview("Empty List") {
	ContentView()
		.modelContainer(for: Wish.self, inMemory: true)
}
