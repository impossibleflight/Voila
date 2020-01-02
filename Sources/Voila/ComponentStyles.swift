//
//  ComponentStyles.swift
//  Voila
//
//  Created by John Clayton on 1/1/20.
//  Copyright © 2020 Impossible Flight, LLC. All rights reserved.
//

import UIKit

//MARK: View styles

public protocol ViewStyles {
	@discardableResult func setting(backgroundColor: UIColor) -> Self
	@discardableResult func setting(margins: UIEdgeInsets) -> Self
}

public extension ViewStyles {
	@discardableResult func clear() -> Self {
		return setting(backgroundColor: .clear)
	}
	@discardableResult func flush() -> Self {
		return padded(by: .zero)
	}
	@discardableResult func padded(by margins: UIEdgeInsets) -> Self {
		return setting(margins: margins)
	}
}

public extension ViewStyles where Self: UIView {
	@discardableResult func setting(backgroundColor: UIColor) -> Self {
		self.backgroundColor = backgroundColor
		return self
	}
	@discardableResult func setting(margins: UIEdgeInsets) -> Self {
		self.layoutMargins = margins
		return self
	}
}

extension UIView: ViewStyles {}

//MARK: TextStyles

public protocol TextStyles {
	@discardableResult func setting(textColor: UIColor) -> Self
	@discardableResult func setting(textAlignment: NSTextAlignment) -> Self
	@discardableResult func setting(lineBreakMode: NSLineBreakMode) -> Self
}

public extension TextStyles {
	@discardableResult func dark() -> Self {
		return setting(textColor: .darkText)
	}
	@discardableResult func light() -> Self {
		return setting(textColor: .lightText)
	}
	@discardableResult func white() -> Self {
		return setting(textColor: .white)
	}
	@discardableResult func black() -> Self {
		return setting(textColor: .black)
	}
	@discardableResult func lightGray() -> Self {
		return setting(textColor: ColorCompatibility.systemGray6)
	}
	@discardableResult func darkGray() -> Self {
		return setting(textColor: ColorCompatibility.systemGray)
	}
	@discardableResult func red() -> Self {
		return setting(textColor: ColorCompatibility.systemRed)
	}
}

public extension TextStyles {
	@discardableResult func left() -> Self {
		return setting(textAlignment: .left)
	}
	@discardableResult func center() -> Self {
		return setting(textAlignment: .center)
	}
	@discardableResult func right() -> Self {
		return setting(textAlignment: .right)
	}
	@discardableResult func justified() -> Self {
		return setting(textAlignment: .justified)
	}
}

public extension TextStyles {
	@discardableResult func truncatingHead() -> Self {
		return setting(lineBreakMode: .byTruncatingHead)
	}
	@discardableResult func truncatingMiddle() -> Self {
		return setting(lineBreakMode: .byTruncatingMiddle)
	}
	@discardableResult func truncatingTail() -> Self {
		return setting(lineBreakMode: .byTruncatingTail)
	}
}

public extension TextStyles where Self: UILabel {
	@discardableResult func setting(textColor: UIColor) -> Self {
		self.textColor = textColor
		return self
	}
}

public extension TextStyles where Self: UILabel {
	@discardableResult func setting(textAlignment: NSTextAlignment) -> Self {
		self.textAlignment = textAlignment
		return self
	}
}
public extension TextStyles where Self: UILabel {
	@discardableResult func setting(lineBreakMode: NSLineBreakMode) -> Self {
		self.lineBreakMode = lineBreakMode
		return self
	}
}

extension UILabel: TextStyles {}


//MARK: UIButton


public protocol ButtonStyles {
	@discardableResult func titleColor(_ color: UIColor, for state: UIControl.State) -> Self
}
public extension ButtonStyles {
	@discardableResult func darkTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(.darkText, for: state)
	}
	@discardableResult func lightTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(.lightText, for: state)
	}
	@discardableResult func whiteTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(.white, for: state)
	}
	@discardableResult func blackTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(.black, for: state)
	}
	@discardableResult func redTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemRed, for: state)
	}
}

public extension ButtonStyles where Self: UIButton {
	@discardableResult func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> Self {
		self.setTitleColor(color, for: state)
		return self
	}
}

extension UIButton: ButtonStyles {}
