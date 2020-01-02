//
//  UIAppearance.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

public extension UIAppearance {
	typealias AppearanceClosure = (Self)->Void
	static func appearance(closure: AppearanceClosure) {
		let proxy = appearance()
		closure(proxy)
	}

	static func appearance(whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type], closure: AppearanceClosure) {
		let proxy = appearance(whenContainedInInstancesOf: containerTypes)
		closure(proxy)
	}
}
