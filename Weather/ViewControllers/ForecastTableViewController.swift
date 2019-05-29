//
//  ForecastTableViewController.swift
//  Weather
//
//  Created by John O'Connell on 5/28/19.
//  Copyright © 2019 John O'Connell. All rights reserved.
//

import UIKit

class ForecastTableViewController: UITableViewController {
    
    var viewModels: [DailyForecastViewModel] = [] {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! DailyForecastTableViewCell

        // Configure the cell...
        let vm = viewModels[indexPath.row]
        cell.forecastImageView.image = vm.image
        cell.temperatureLabel.text = "\(vm.low) - \(vm.high)ºF"
        cell.dayLabel.text = vm.dayOfTheWeek

        return cell
    }
}
