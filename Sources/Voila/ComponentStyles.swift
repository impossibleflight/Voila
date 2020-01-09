//
//  ComponentStyles.swift
//  Voila
//
//  Created by John Clayton on 1/1/20.
//  Copyright © 2020 Impossible Flight, LLC. All rights reserved.
//

import UIKit

//TODO: Use Sourcery to generate a lot of this

//MARK: View styles

public protocol ViewStyles {
	@discardableResult func setting(backgroundColor: UIColor?) -> Self
	@discardableResult func setting(margins: UIEdgeInsets) -> Self
	@discardableResult func setting(borderWidth: CGFloat) -> Self
	@discardableResult func setting(borderColor: UIColor) -> Self
}

public extension ViewStyles {
	@discardableResult func clear() -> Self {
		return setting(backgroundColor: .clear)
	}
	@discardableResult func white() -> Self {
		return setting(backgroundColor: .white)
	}
	@discardableResult func black() -> Self {
		return setting(backgroundColor: .black)
	}
}

public extension ViewStyles {
	@discardableResult func bordered(color: UIColor = ColorCompatibility.separator, width: CGFloat = 1.0) -> Self {
		return setting(borderColor: color).setting(borderWidth: width)
	}
}

public extension ViewStyles {
	@discardableResult func systemFill() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemFill)
	}
	@discardableResult func secondarySystemFill() -> Self {
		return setting(backgroundColor: ColorCompatibility.secondarySystemFill)
	}
	@discardableResult func tertiarySystemFill() -> Self {
		return setting(backgroundColor: ColorCompatibility.tertiarySystemFill)
	}
	@discardableResult func quaternarySystemFill() -> Self {
		return setting(backgroundColor: ColorCompatibility.quaternarySystemFill)
	}
	@discardableResult func systemBackground() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemBackground)
	}
	@discardableResult func tertiarySystemBackground() -> Self {
		return setting(backgroundColor: ColorCompatibility.tertiarySystemBackground)
	}
	@discardableResult func systemGroupedBackground() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGroupedBackground)
	}
	@discardableResult func secondarySystemGroupedBackground() -> Self {
		return setting(backgroundColor: ColorCompatibility.secondarySystemGroupedBackground)
	}
	@discardableResult func tertiarySystemGroupedBackground() -> Self {
		return setting(backgroundColor: ColorCompatibility.tertiarySystemGroupedBackground)
	}
	@discardableResult func separator() -> Self {
		return setting(backgroundColor: ColorCompatibility.separator)
	}
	@discardableResult func systemBlue() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemBlue)
	}
	@discardableResult func systemGreen() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGreen)
	}
	@discardableResult func systemIndigo() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemIndigo)
	}
	@discardableResult func systemOrange() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemOrange)
	}
	@discardableResult func systemPink() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemPink)
	}
	@discardableResult func systemPurple() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemPurple)
	}
	@discardableResult func systemRed() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemRed)
	}
	@discardableResult func systemTeal() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemTeal)
	}
	@discardableResult func systemYellow() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemYellow)
	}
	@discardableResult func systemGray() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray)
	}
	@discardableResult func systemGray2() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray2)
	}
	@discardableResult func systemGray3() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray3)
	}
	@discardableResult func systemGray4() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray4)
	}
	@discardableResult func systemGray5() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray5)
	}
	@discardableResult func systemGray6() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray6)
	}
	@discardableResult func systemLightGray() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray6)
	}
	@discardableResult func systemDarkGray() -> Self {
		return setting(backgroundColor: ColorCompatibility.systemGray)
	}
}

public extension ViewStyles {
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
	@discardableResult func setting(borderWidth: CGFloat) -> Self {
		self.layer.borderWidth = borderWidth
		return self
	}
	@discardableResult func setting(borderColor: UIColor) -> Self {
		self.layer.borderColor = borderColor.cgColor
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
	@discardableResult func setting(distribution: UIStackView.Distribution) -> Self
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
	@discardableResult func filled() -> Self {
		return setting(distribution: .fill)
	}
	@discardableResult func filledEqually() -> Self {
		return setting(distribution: .fillEqually)
	}
	@discardableResult func filledProportionally() -> Self {
		return setting(distribution: .fillProportionally)
	}
	@discardableResult func equallySpaced() -> Self {
		return setting(distribution: .equalSpacing)
	}
	@discardableResult func equallyCentered() -> Self {
		return setting(distribution: .equalCentering)
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
	@discardableResult func resizeSubviewsToFill() -> Self {
		return setting(alignment: .fill)
	}
	@discardableResult func centerAligned() -> Self {
		return setting(alignment: .center)
	}
}

public extension StackStyles where Self: UIStackView {
	@discardableResult func setting(axis: NSLayoutConstraint.Axis) -> Self {
		self.axis = .horizontal
		return self
	}
	@discardableResult func setting(distribution: UIStackView.Distribution) -> Self {
		self.distribution = distribution
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
	@discardableResult func topAligned() -> Self {
		return setting(alignment: .top)
	}
	@discardableResult func bottomAligned() -> Self {
		return setting(alignment: .bottom)
	}
	@discardableResult func firstBaselineAligned() -> Self {
		return setting(alignment: .firstBaseline)
	}
	@discardableResult func lastBaselineAligned() -> Self {
		return setting(alignment: .lastBaseline)
	}
}

public extension StackStyles where Self: VerticalStackView {
	@discardableResult func leadingAligned() -> Self {
		return setting(alignment: .leading)
	}
	@discardableResult func trailingAligned() -> Self {
		return setting(alignment: .trailing)
	}
}

extension UIStackView: StackStyles {}

//MARK: Text styles

public protocol TextStyles {
	@discardableResult func setting(textColor: UIColor) -> Self
	@discardableResult func setting(textAlignment: NSTextAlignment) -> Self
	@discardableResult func setting(lineBreakMode: NSLineBreakMode) -> Self
	@discardableResult func setting(numberOfLines: Int) -> Self
}

extension TextStyles {
	@discardableResult func whiteTextColor() -> Self {
		return setting(textColor: .white)
	}
	@discardableResult func blackTextColor() -> Self {
		return setting(textColor: .black)
	}
}

public extension TextStyles {
	@discardableResult func systemLabelTextColor() -> Self {
		return setting(textColor: ColorCompatibility.label)
	}
	@discardableResult func systemSecondaryLabelTextColor() -> Self {
		return setting(textColor: ColorCompatibility.secondaryLabel)
	}
	@discardableResult func systemTertiaryLabelTextColor() -> Self {
		return setting(textColor: ColorCompatibility.tertiaryLabel)
	}
	@discardableResult func systemQuaternaryLabelTextColor() -> Self {
		return setting(textColor: ColorCompatibility.quaternaryLabel)
	}
	@discardableResult func systemBlueTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemBlue)
	}
	@discardableResult func systemGreenTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGreen)
	}
	@discardableResult func systemIndigoTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemIndigo)
	}
	@discardableResult func systemOrangeTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemOrange)
	}
	@discardableResult func systemPinkTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemPink)
	}
	@discardableResult func systemPurpleTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemPurple)
	}
	@discardableResult func systemRedTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemRed)
	}
	@discardableResult func systemTealTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemTeal)
	}
	@discardableResult func systemYellowTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemYellow)
	}
	@discardableResult func systemGrayTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray)
	}
	@discardableResult func systemGray2TextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray2)
	}
	@discardableResult func systemGray3TextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray3)
	}
	@discardableResult func systemGray4TextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray4)
	}
	@discardableResult func systemGray5TextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray5)
	}
	@discardableResult func systemGray6TextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray6)
	}
	@discardableResult func systemLightGrayTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray6)
	}
	@discardableResult func systemDarkGrayTextColor() -> Self {
		return setting(textColor: ColorCompatibility.systemGray)
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
	@discardableResult func multiline() -> Self {
		return setting(numberOfLines: 0)
	}
}

public extension TextStyles where Self: UILabel {
	@discardableResult func setting(textColor: UIColor) -> Self {
		self.textColor = textColor
		return self
	}
	@discardableResult func setting(textAlignment: NSTextAlignment) -> Self {
		self.textAlignment = textAlignment
		return self
	}
	@discardableResult func setting(lineBreakMode: NSLineBreakMode) -> Self {
		self.lineBreakMode = lineBreakMode
		return self
	}
	@discardableResult func setting(numberOfLines: Int) -> Self {
		self.numberOfLines = numberOfLines
		return self
	}
}

extension UILabel: TextStyles {}


//MARK: Button styles


public protocol ButtonStyles {
	@discardableResult func setting(titleColor color: UIColor, for state: UIControl.State) -> Self
}
public extension ButtonStyles {
	@discardableResult func whiteTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: .white, for: state)
	}
	@discardableResult func blackTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: .black, for: state)
	}
}

public extension ButtonStyles {
	@discardableResult func systemLabelTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.label, for: state)
	}
	@discardableResult func systemSecondaryLabelTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.secondaryLabel, for: state)
	}
	@discardableResult func systemTertiaryLabelTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.tertiaryLabel, for: state)
	}
	@discardableResult func systemQuaternaryLabelTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.quaternaryLabel, for: state)
	}
	@discardableResult func systemBlueTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemBlue, for: state)
	}
	@discardableResult func systemGreenTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGreen, for: state)
	}
	@discardableResult func systemIndigoTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemIndigo, for: state)
	}
	@discardableResult func systemOrangeTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemOrange, for: state)
	}
	@discardableResult func systemPinkTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemPink, for: state)
	}
	@discardableResult func systemPurpleTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemPurple, for: state)
	}
	@discardableResult func systemRedTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemRed, for: state)
	}
	@discardableResult func systemTealTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemTeal, for: state)
	}
	@discardableResult func systemYellowTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemYellow, for: state)
	}
	@discardableResult func systemGrayTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray, for: state)
	}
	@discardableResult func systemGray2Title(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray2, for: state)
	}
	@discardableResult func systemGray3Title(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray3, for: state)
	}
	@discardableResult func systemGray4Title(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray4, for: state)
	}
	@discardableResult func systemGray5Title(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray5, for: state)
	}
	@discardableResult func systemGray6Title(for state: UIControl.State = .normal)  -> Self {
		return setting(titleColor: ColorCompatibility.systemGray6, for: state)
	}

	@discardableResult func systemDarkGrayTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray, for: state)
	}
	@discardableResult func systemLightGrayTitle(for state: UIControl.State = .normal) -> Self {
		return setting(titleColor: ColorCompatibility.systemGray6, for: state)
	}
}

public extension ButtonStyles where Self: UIButton {
	@discardableResult func setting(titleColor color: UIColor, for state: UIControl.State = .normal) -> Self {
		self.setTitleColor(color, for: state)
		return self
	}
}

extension UIButton: ButtonStyles {}
