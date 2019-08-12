//
//  FlagCell.swift
//  Custom Cells
//
//  Created by Dwayne Neckles on 8/11/19.
//  Copyright © 2019 Ben Sullivan. All rights reserved.
//

import UIKit

class FlagCell: UITableViewCell {
  
    var country: Country! {
        didSet {
            configureCell()
        }
    }
    
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var flagImage: UIImageView!
    
    @IBAction func togglePressed(_ sender: UIButton) {
        
        countryName.text = countryName.text == country.name ? country.cont.rawValue:country.name
    }
    
    func configureCell() {
        countryName.text = country.name
        flagImage.image = UIImage(named: country.flagSmall)
    }
}
