//
//  Appearance.swift
//  Voila
//
//  Created by John Clayton on 12/31/19.
//  Copyright © 2019 Impossible Flight, LLC. All rights reserved.
//

import UIKit

public final class Appearance: StyleApplying {
	public static let `default` = Appearance(theme: Default())

	public static var current: Appearance {
		get {
			guard let identifier = currentThemeIdentifier, let theme = theme(forIdentifier: identifier) else {
				return .default
			}
			return Appearance(theme: theme)
		}
		set {
			register(theme: newValue.theme)
			currentThemeIdentifier = newValue.theme.identifier
		}
	}

	public static func register(theme: Theme) {
		Appearance.registeredThemes[theme.identifier] = theme
	}

	private static let key = "com.impossibleflight.Voila.currentTheme"
	private static var currentThemeIdentifier: AnyHashable? {
		get { return UserDefaults.standard.object(forKey: key) as? AnyHashable }
		set {
			let defaults = UserDefaults.standard
			defaults.set(newValue, forKey: key)
			defaults.synchronize()
		}
	}

	private static func theme(forIdentifier identifier: AnyHashable) -> Theme? {
		return registeredThemes[identifier]
	}
	private static var registeredThemes = [AnyHashable:Theme]()


	public let theme: Theme

	public init(theme: Theme) {
		self.theme = theme
	}

	public func apply(application: UIApplication) {
		theme.apply(application: application)
		application.windows.reload()
	}
}
