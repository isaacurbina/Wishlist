//
//  WishModel.swift
//  Wishlist
//
//  Created by Isaac Urbina on 2/20/25.
//

import Foundation
import SwiftData

@Model
class Wish {
	var title: String
	
	init(title: String) {
		self.title = title
	}
}
