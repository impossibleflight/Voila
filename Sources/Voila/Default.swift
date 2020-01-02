//
//  DefaultTheme.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

/// A theme that applies no styling and just uses the defaults for component attributes
public struct Default: Theme {
	public var identifier: AnyHashable = "👏"
	public func apply(application: UIApplication) { }
}

extension Default: ComponentAttributes {
	public func backgroundColor(for traits: UITraitCollection) -> UIColor? {
		return ColorCompatibility.systemBackground
	}

	public func barTintColor(for traits: UITraitCollection) -> UIColor? {
		return nil
	}

	public func buttonBackgroundImage(for state: UIControl.State, traits: UITraitCollection) -> UIImage? {
		return nil
	}

	public func buttonTitleColor(for state: UIControl.State, traits: UITraitCollection) -> UIColor? {
		return ColorCompatibility.label
	}

	public func buttonTitleFont(for state: UIControl.State, traits: UITraitCollection) -> UIFont? {
		return nil
	}

	public func font(for traits: UITraitCollection) -> UIFont? {
		return UIFont.systemFont(ofSize: UIFont.systemFontSize)
	}

	public func textColor(for traits: UITraitCollection) -> UIColor? {
		return ColorCompatibility.label
	}

	public func font(forTextStyle textStyle: UIFont.TextStyle, traits: UITraitCollection) -> UIFont? {
		return UIFont.preferredFont(forTextStyle: textStyle)
	}

	public func textColor(forTextStyle textStyle: UIFont.TextStyle, traits: UITraitCollection) -> UIColor? {
		return ColorCompatibility.label
	}

	public func tableViewBackgroundColor(for style: UITableView.Style, traits: UITraitCollection) -> UIColor? {
		switch style {
		case .plain:
			return ColorCompatibility.systemBackground
		default:
			return ColorCompatibility.systemGroupedBackground
		}
	}

	public func tableCellBackgroundColor(forState state: UIControl.State, style: UITableView.Style, traits: UITraitCollection) -> UIColor? {
		switch state {
		case .normal:
			switch style {
			case .plain:
				return ColorCompatibility.systemBackground
			default:
				return ColorCompatibility.secondarySystemGroupedBackground
			}
		default:
			return nil
		}
	}

	public func collectionViewBackgroundColor(for traits: UITraitCollection) -> UIColor? {
		return ColorCompatibility.systemBackground
	}

	public func collectionCellBackgroundColor(forState state: UIControl.State, traits: UITraitCollection) -> UIColor? {
		switch state {
		case .normal:
			return ColorCompatibility.systemBackground
		default:
			return nil
		}
	}

	public func buttonHeight(for traits: UITraitCollection) -> CGFloat? {
		return nil
	}

	public func buttonWidthAspect(for traits: UITraitCollection) -> CGFloat? {
		return nil
	}
}

extension Default: ComponentStyling {
	@discardableResult public func style<T>(_ window: T) -> T where T : UIWindow {
		return window
	}

	@discardableResult public func style<T>(_ view: T) -> T where T : UIView {
		return view
	}

	@discardableResult public func style<T>(_ label: T) -> T where T : UILabel {
		return label
	}

	@discardableResult public func style<T: UILabel>(_ label: T, for textStyle: UIFont.TextStyle) -> T {
		return label
	}

	@discardableResult public func style<T>(_ navBar: T) -> T where T : UINavigationBar {
		return navBar
	}

	@discardableResult public func style<T>(_ barButton: T) -> T where T : UIBarButtonItem {
		return barButton
	}

	@discardableResult public func style<T>(_ button: T) -> T where T : UIButton {
		return button
	}

	@discardableResult public func style<T>(_ tableView: T) -> T where T : UITableView {
		return tableView
	}

	@discardableResult public func style<T>(_ tableCell: T) -> T where T : UITableViewCell {
		return tableCell
	}
}
