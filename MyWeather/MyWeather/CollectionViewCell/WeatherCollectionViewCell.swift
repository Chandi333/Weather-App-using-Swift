//
//  WeatherCollectionViewCell.swift
//  Weather Forecast App
//
//  Created by Sarthak Chandi on 15/08/2023.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {

    static let identifier = "WeatherCollectionViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "WeatherCollectionViewCell",
                     bundle: nil)
    }

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var tempLabel: UILabel!

    func configure(with model: HourlyWeatherEntry) {
        self.tempLabel.text = "\(String(describing: model.temperature!))"
        self.iconImageView.contentMode = .scaleAspectFit
        self.iconImageView.image = UIImage(named: "cloud")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
