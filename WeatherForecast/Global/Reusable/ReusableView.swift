//
//  ReusableView.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 8/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import UIKit

protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var defaultReuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
