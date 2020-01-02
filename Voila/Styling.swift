//
//  ComponentStyling.swift
//  Voila
//
//  Created by John Clayton on 12/30/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

//MARK: Styling behaviors

public protocol WindowStyling {
	@discardableResult func style<T: UIWindow>(_ window: T) -> T
}

public protocol ViewStyling {
	@discardableResult func style<T: UIView>(_ view: T) -> T
}

public protocol TextStyling {
	@discardableResult func style<T: UILabel>(_ label: T) -> T
	@discardableResult func style<T: UILabel>(_ label: T, for style: UIFont.TextStyle) -> T
}

public protocol NavBarStyling {
	@discardableResult func style<T: UINavigationBar>(_ navBar: T) -> T
}

public protocol BarButtonStyling {
	@discardableResult func style<T: UIBarButtonItem>(_ barButton: T) -> T
}

public protocol ButtonStyling {
	@discardableResult func style<T: UIButton>(_ button: T) -> T
}

public protocol TableViewStyling {
	@discardableResult func style<T: UITableView>(_ tableView: T) -> T
}

public protocol TableCellStyling {
	@discardableResult func style<T: UITableViewCell>(_ tableCell: T) -> T
}

public protocol CollectionViewStyling {
	@discardableResult func style<T: UICollectionView>(_ collectionView: T) -> T
}

public protocol CollectionCellStyling {
	@discardableResult func style<T: UICollectionViewCell>(_ collectionCell: T) -> T
}

public protocol CollectionHeaderStyling {
	@discardableResult func style<T:UICollectionReusableView >(_ collectionHeader: T) -> T
}

public protocol ComponentStyling:
	WindowStyling
	, ViewStyling
	, TextStyling
	, NavBarStyling
	, BarButtonStyling
	, ButtonStyling
	, TableViewStyling
	, TableCellStyling
	, CollectionViewStyling
	, CollectionCellStyling
	, CollectionHeaderStyling
{ }

