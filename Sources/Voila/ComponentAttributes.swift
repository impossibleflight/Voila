//
//  ComponentAttributes.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

public protocol ViewAttributes {
	func backgroundColor(for traits: UITraitCollection) -> UIColor?
	func disabledBackgroundColor(for traits: UITraitCollection) -> UIColor?
	func underpageBackgroundColor(for traits: UITraitCollection) -> UIColor?
	func scrollViewBackgroundColor(for traits: UITraitCollection) -> UIColor?
}

public protocol NavigationBarAttributes {
	func barTintColor(for traits: UITraitCollection) -> UIColor?
}

public protocol BarButtonAttributes {}

public protocol ButtonAttributes {
	func buttonBackgroundImage(for state: UIControl.State, traits: UITraitCollection) -> UIImage?
	func buttonTitleColor(for state: UIControl.State, traits: UITraitCollection) -> UIColor?
	func buttonTitleFont(for state: UIControl.State, traits: UITraitCollection) -> UIFont?
}

public protocol TextAttributes {
	func font(for traits: UITraitCollection) -> UIFont?
	func textColor(for traits: UITraitCollection, state: UIControl.State) -> UIColor?

	func font(forTextStyle: UIFont.TextStyle, traits: UITraitCollection) -> UIFont?
	func textColor(forTextStyle: UIFont.TextStyle, state: UIControl.State, traits: UITraitCollection) -> UIColor?
}

public protocol TableAttributes {
	func tableViewBackgroundColor(for style: UITableView.Style, traits: UITraitCollection) -> UIColor?
	func tableCellBackgroundColor(forState state: UIControl.State, style: UITableView.Style, traits: UITraitCollection) -> UIColor?
	func tableViewSectionHeaderBackgroundColor(for style: UITableView.Style, traits: UITraitCollection) -> UIColor?
}

public protocol CollectionAttributes {
	func collectionViewBackgroundColor(for traits: UITraitCollection) -> UIColor?
	func collectionCellBackgroundColor(forState state: UIControl.State, traits: UITraitCollection) -> UIColor?
	func collectionViewSectionHeaderBackgroundColor(for traits: UITraitCollection) -> UIColor?
	func collectionViewSectionFooterBackgroundColor(for traits: UITraitCollection) -> UIColor?
}

public protocol AdaptiveComponentAttributes {
	func buttonHeight(for traits: UITraitCollection) -> CGFloat?
	func buttonWidthAspect(for traits: UITraitCollection) -> CGFloat?
}

public protocol ComponentAttributes: ViewAttributes
	, NavigationBarAttributes
	, BarButtonAttributes
	, ButtonAttributes
	, TextAttributes
	, TableAttributes
	, CollectionAttributes
	, AdaptiveComponentAttributes
{}
