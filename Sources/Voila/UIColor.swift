//
//  UIColor.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

//TODO: Use Sourcery to generate these

//MARK: White

public extension UIColor {
	static var white55: UIColor {
		return UIColor(white: 0.55, alpha: 1)
	}
	static var white65: UIColor {
		return UIColor(white: 0.65, alpha: 1)
	}
	static var white75: UIColor {
		return UIColor(white: 0.75, alpha: 1)
	}
	static var white85: UIColor {
		return UIColor(white: 0.85, alpha: 1)
	}
	static var white95: UIColor {
		return UIColor(white: 0.95, alpha: 1)
	}
	static func white(_ white: CGFloat) -> UIColor {
		return UIColor(white: white, alpha: 1.0)
	}
}


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

//MARK: Black

public extension UIColor {
	static var black55: UIColor {
		return UIColor(white: 1-0.55, alpha: 1)
	}
	static var black65: UIColor {
		return UIColor(white: 1-0.65, alpha: 1)
	}
	static var black75: UIColor {
		return UIColor(white: 1-0.75, alpha: 1)
	}
	static var black85: UIColor {
		return UIColor(white: 1-0.85, alpha: 1)
	}
	static var black95: UIColor {
		return UIColor(white: 1-0.95, alpha: 1)
	}
	static func black(_ white: CGFloat) -> UIColor {
		return UIColor(white: 1-white, alpha: 1.0)
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
