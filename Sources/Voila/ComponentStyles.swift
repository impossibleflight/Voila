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
	@discardableResult func setting(backgroundColor: UIColor?) -> Self
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
	@discardableResult func setting(backgroundColor: UIColor?) -> Self {
		self.backgroundColor = backgroundColor
		return self
	}
	@discardableResult func setting(margins: UIEdgeInsets) -> Self {
		self.layoutMargins = margins
		return self
	}
}

extension UIView: ViewStyles {}

//MARK: StackView styles

open class HorizontalStackView: UIStackView {
	open override var axis: NSLayoutConstraint.Axis {
		get { return .horizontal }
		set {}
	}
}

open class VerticalStackView: UIStackView {
	open override var axis: NSLayoutConstraint.Axis {
		get { return .vertical }
		set {}
	}
}

public protocol StackStyles {
	@discardableResult func setting(axis: NSLayoutConstraint.Axis) -> Self
	@discardableResult func setting(alignment: UIStackView.Alignment) -> Self
	@discardableResult func setting(spacing: CGFloat) -> Self
}

public extension StackStyles {
	@discardableResult func horizontal() -> Self {
		return setting(axis: .horizontal)
	}
	@discardableResult func vertical() -> Self {
		return setting(axis: .vertical)
	}
	@discardableResult func flush() -> Self {
		return padded(by: 0)
	}
	@discardableResult func paragraphPadding() -> Self {
		return padded(by: 8)
	}
	@discardableResult func standardPadding() -> Self {
		return padded(by: 20)
	}
	@discardableResult func padded(by padding: CGFloat) -> Self {
		return setting(spacing: padding)
	}
	@discardableResult func fill() -> Self {
		return setting(alignment: .fill)
	}
	@discardableResult func center() -> Self {
		return setting(alignment: .center)
	}
}

public extension StackStyles where Self: UIStackView {
	@discardableResult func setting(axis: NSLayoutConstraint.Axis) -> Self {
		self.axis = .horizontal
		return self
	}
	@discardableResult func setting(alignment: UIStackView.Alignment) -> Self {
		self.alignment = alignment
		return self
	}
	@discardableResult func setting(spacing: CGFloat) -> Self {
		self.spacing = spacing
		return self
	}
}

public extension StackStyles where Self: HorizontalStackView {
	@discardableResult func top() -> Self {
		return setting(alignment: .top)
	}
	@discardableResult func bottom() -> Self {
		return setting(alignment: .bottom)
	}
	@discardableResult func firstBaseline() -> Self {
		return setting(alignment: .firstBaseline)
	}
	@discardableResult func lastBaseline() -> Self {
		return setting(alignment: .lastBaseline)
	}
}

public extension StackStyles where Self: VerticalStackView {
	@discardableResult func leading() -> Self {
		return setting(alignment: .leading)
	}
	@discardableResult func trailing() -> Self {
		return setting(alignment: .trailing)
	}
}

extension UIStackView: StackStyles {}

//MARK: Text styles

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
	@discardableResult func systemLightGray() -> Self {
		return setting(textColor: ColorCompatibility.systemGray6)
	}
	@discardableResult func systemDarkGray() -> Self {
		return setting(textColor: ColorCompatibility.systemGray)
	}
	@discardableResult func systemRed() -> Self {
		return setting(textColor: ColorCompatibility.systemRed)
	}
	@discardableResult func systemBlue() -> Self {
		return setting(textColor: ColorCompatibility.systemBlue)
	}
	@discardableResult func systemGreen() -> Self {
		return setting(textColor: ColorCompatibility.systemGreen)
	}
	@discardableResult func systemYellow() -> Self {
		return setting(textColor: ColorCompatibility.systemYellow)
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


//MARK: Button styles


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
	@discardableResult func systemDarkTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemGray, for: state)
	}
	@discardableResult func systemLightTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemGray6, for: state)
	}
	@discardableResult func systemRedTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemRed, for: state)
	}
	@discardableResult func systemBlueTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemBlue, for: state)
	}
	@discardableResult func systemGreenTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemGreen, for: state)
	}
	@discardableResult func systemYellowTitle(for state: UIControl.State = .normal) -> Self {
		return titleColor(ColorCompatibility.systemYellow, for: state)
	}
}

public extension ButtonStyles where Self: UIButton {
	@discardableResult func titleColor(_ color: UIColor, for state: UIControl.State = .normal) -> Self {
		self.setTitleColor(color, for: state)
		return self
	}
}

extension UIButton: ButtonStyles {}
