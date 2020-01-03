//
//  StylableComponent.swift
//  Voila
//
//  Created by John Clayton on 1/1/20.
//  Copyright © 2020 Impossible Flight, LLC. All rights reserved.
//

import UIKit

public protocol StyleInjected {
	var voila: Theme { get }
}

extension StyleInjected {
	public var voila: Theme { return Appearance.current.theme }
}

// StyleableComponent is the inversion of style injection
public protocol StylableComponent: StyleInjected {
	@discardableResult func styled() -> Self
}

public extension StylableComponent {
	@discardableResult func styled() -> Self {
		// If we failed to add styling support for a specific component type, we can safely just return it
		return self
	}
}

// Default conformances
extension UIView: StylableComponent { }
extension UIBarButtonItem: StylableComponent {}


public extension StylableComponent where Self: UIView {
	func styled() -> Self {
		return voila.style(self)
	}
	@discardableResult func `default`() -> Self {
		self.backgroundColor = voila.backgroundColor(for: self.traitCollection)
		return self
	}
	@discardableResult func light() -> Self {
		if #available(iOS 12.0, *) {
			let traits = UITraitCollection(traitsFrom: [self.traitCollection, UITraitCollection(userInterfaceStyle: .light)])
			self.backgroundColor = voila.backgroundColor(for: traits)
		} else {
			self.backgroundColor = voila.backgroundColor(for: self.traitCollection)
		}
		return self
	}
	@discardableResult func dark() -> Self {
		if #available(iOS 12.0, *) {
			let traits = UITraitCollection(traitsFrom: [self.traitCollection, UITraitCollection(userInterfaceStyle: .dark)])
			return self.setting(backgroundColor: voila.backgroundColor(for: traits))
		}

		return self.setting(backgroundColor: voila.backgroundColor(for: self.traitCollection))
	}
	@discardableResult func tableViewBackground() -> Self {
		return self.setting(backgroundColor: voila.tableViewBackgroundColor(for: .plain, traits: self.traitCollection))
	}
	@discardableResult func groupedTableViewBackground() -> Self {
		return self.setting(backgroundColor: voila.tableViewBackgroundColor(for: .grouped, traits: self.traitCollection))
	}

	@discardableResult func underpageBackground() -> Self {
		return self.setting(backgroundColor: voila.underpageBackgroundColor(for: self.traitCollection))
	}
	@discardableResult func scrollViewBackground() -> Self {
		return self.setting(backgroundColor: voila.scrollViewBackgroundColor(for: self.traitCollection))
	}
}

public extension StylableComponent where Self: UILabel {
	func styled() -> Self {
		return voila.style(self)
	}
	@discardableResult func largeTitle() -> Self {
		return voila.style(self, for: .largeTitle)
	}
	@discardableResult func title1() -> Self {
		return voila.style(self, for: .title1)
	}
	@discardableResult func title2() -> Self {
		return voila.style(self, for: .title2)
	}
	@discardableResult func title3() -> Self {
		return voila.style(self, for: .title3)
	}
	@discardableResult func headline() -> Self {
		return voila.style(self, for: .headline)
	}
	@discardableResult func subheadline() -> Self {
		return voila.style(self, for: .subheadline)
	}
	@discardableResult func body() -> Self {
		return voila.style(self, for: .body)
	}
	@discardableResult func callout() -> Self {
		return voila.style(self, for: .callout)
	}
	@discardableResult func footnote() -> Self {
		return voila.style(self, for: .footnote)
	}
	@discardableResult func caption1() -> Self {
		return voila.style(self, for: .caption1)
	}
	@discardableResult func caption2() -> Self {
		return voila.style(self, for: .caption2)
	}
}

public extension StylableComponent where Self: UIButton {
	func styled() -> Self {
		return voila.style(self)
	}
}

public extension StylableComponent where Self: UINavigationBar {
	func styled() -> Self {
		return voila.style(self)
	}
}

public extension StylableComponent where Self: UIBarButtonItem {
	func styled() -> Self {
		return voila.style(self)
	}
}

public extension StylableComponent where Self: UITableView {
	func styled() -> Self {
		return voila.style(self)
	}
}

public extension StylableComponent where Self: UITableViewCell {
	func styled() -> Self {
		return voila.style(self)
	}
}

public extension StylableComponent where Self: UICollectionView {
	func styled() -> Self {
		return voila.style(self)
	}
}

public extension StylableComponent where Self: UICollectionViewCell {
	func styled() -> Self {
		return voila.style(self)
	}
}
