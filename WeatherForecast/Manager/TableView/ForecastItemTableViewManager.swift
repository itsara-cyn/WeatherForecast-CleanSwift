//
//  ForecastItemTableViewManager.swift
//  WeatherForecast
//
//  Created by Itsaraporn Chaichayanon on 8/8/18.
//  Copyright © 2018 ItsaraChai. All rights reserved.
//

import UIKit

class ForecastItemTableViewManager: NSObject, TableViewManagerInterface {
    typealias dataType = ForecastItem
    var dataList: [ForecastItem] = []
    
    var selectedIndex: Int?

    private weak var mTableView: UITableView!
    
    required init(tableView: UITableView) {
        super.init()
        
        mTableView = tableView
        mTableView.delegate = self
        mTableView.dataSource = self
        mTableView.registerNib(ForecastItemCell.self)
    }
}

extension ForecastItemTableViewManager: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let object: ForecastItem = self.dataList[indexPath.section]
        let cell: ForecastItemCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        cell.textLabel?.text = "\(object.main?.temp ?? 0)"
        return cell
    }
}

extension ForecastItemTableViewManager: UITableViewDelegate {
}
