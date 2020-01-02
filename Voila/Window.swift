//
//  Window.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

extension UIWindow {
	func reload() {
		let views = subviews
		for view in views {
			view.removeFromSuperview()
			self.addSubview(view)
		}
	}
}

extension Array where Element == UIWindow {
	func reload() {
		forEach { $0.reload() }
	}
}
