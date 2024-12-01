//
//  VegetablesTableViewCell.swift
//  VegetablesTableVeiw
//
//  Created by Ahmed El Gndy on 01/12/2024.
//

import UIKit

class VegetablesTableViewCell: UITableViewCell {

    @IBOutlet var vegetableImage: UIImageView!
    @IBOutlet var hearIconButton: UIButton!
  
    @IBOutlet var vegetableNameLbl: UILabel!
    @IBOutlet var newPriceLbl: UILabel!
    @IBOutlet var oldPriceLbl: UILabel!
    @IBOutlet var farmNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func configure(with vegetable: Vegetable){
        vegetableImage.layer.cornerRadius = 10
        vegetableImage.image = UIImage(named: vegetable.photo)
        vegetableNameLbl.text = vegetable.name
        newPriceLbl.text = vegetable.NewPrice
        oldPriceLbl.text = vegetable.oldPrice
        farmNameLbl.text = vegetable.farmName
    }
}
