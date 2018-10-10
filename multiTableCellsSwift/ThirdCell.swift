//
//  ThirdCell.swift
//  multiTableCellsSwift
//
//  Created by AFFIXUS IMAC1 on 9/26/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class ThirdCell: UITableViewCell {

    @IBOutlet weak var lbStat: UILabel!
    @IBOutlet weak var lbDescc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        layoutIfNeeded()
        sizeToFit()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
