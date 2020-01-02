//
//  Theme.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

public protocol StyleApplying {
	func apply(application: UIApplication)
}

public protocol Theme: StyleApplying, ComponentStyling, ComponentAttributes {
	var identifier: AnyHashable { get }
}
