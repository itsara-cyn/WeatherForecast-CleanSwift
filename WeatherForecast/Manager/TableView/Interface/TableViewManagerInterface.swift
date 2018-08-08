//
//  TableViewManagerInterface.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 8/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import UIKit

protocol TableViewManagerInterface: UITableViewDataSource, UITableViewDelegate {
    associatedtype dataType
    var dataList: [dataType] { set get }
    
    init(tableView: UITableView)
}
