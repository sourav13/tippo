//
//  ColorTheme.swift
//  Tippo
//
//  Created by sourav sachdeva on 21/12/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import Foundation
import UIKit

struct ColorTheme {

    // MARK: - Instance Vars

    let isDefaultStatusBar: Bool
    let viewControllerBackgroundColor: UIColor

    let primaryColor: UIColor
    let primaryTextColor: UIColor

    let secondaryColor: UIColor

    let accentColor: UIColor
    let outputTextColor: UIColor
    
    static let light = ColorTheme(isDefaultStatusBar: true,
                                  viewControllerBackgroundColor: UIColor.white,
                                  primaryColor: .white,
                                  primaryTextColor: .black,
                                  secondaryColor: .blue,
                                  accentColor: .purple,
                                  outputTextColor: .gray)

    static let dark = ColorTheme(isDefaultStatusBar: false,
                                 viewControllerBackgroundColor: .black,
                                 primaryColor: .black,
                                 primaryTextColor: .white,
                                 secondaryColor: .black,
                                 accentColor: .green,
                                 outputTextColor: .white)
}
