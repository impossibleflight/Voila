//
//  UIColor.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

//TODO: Use Sourcery to generate these

//MARK: Translucent white

public extension UIColor {
	static var translucentWhite55: UIColor {
		return UIColor(white: 1, alpha: 0.55)
	}
	static var translucentWhite65: UIColor {
		return UIColor(white: 1, alpha: 0.65)
	}
	static var translucentWhite75: UIColor {
		return UIColor(white: 1, alpha: 0.75)
	}
	static var translucentWhite85: UIColor {
		return UIColor(white: 1, alpha: 0.85)
	}
	static var translucentWhite95: UIColor {
		return UIColor(white: 1, alpha: 0.95)
	}
}

//MARK: Grayscale

public extension UIColor {
	static var gray75: UIColor {
		return UIColor(white: 0.75, alpha: 1.0)
	}

	static var gray80: UIColor {
		return UIColor(white: 0.80, alpha: 1.0)
	}

	static var gray85: UIColor {
		return UIColor(white: 0.85, alpha: 1.0)
	}

	static var gray90: UIColor {
		return UIColor(white: 0.90, alpha: 1.0)
	}

	static var gray95: UIColor {
		return UIColor(white: 0.95, alpha: 1.0)
	}

	static func gray(_ white: CGFloat) -> UIColor {
		return UIColor(white: white, alpha: 1.0)
	}
}

//MARK: Background colors

public extension UIColor {
	static var lightBackgroundColor: UIColor {
		return .gray(0.92)
	}
	static var backgroundColor: UIColor {
		return .gray(0.66 )
	}
	static var darkBackgroundColor: UIColor {
		return .gray(0.43)
	}
	static var underpageBackgroundColor: UIColor {
		return .gray(0.55)
	}
	static var scrollViewBackgroundColor: UIColor {
		return .gray(0.37)
	}
}
