//
//  DailyForecastTableViewCell.swift
//  Weather
//
//  Created by John O'Connell on 5/28/19.
//  Copyright © 2019 John O'Connell. All rights reserved.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {

    // MARK: Outlets
    
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var forecastImageView: UIImageView!
    
    // MARK: Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
