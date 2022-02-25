//
//  TableViewCell1.swift
//  tableviewdictionaryxib
//
//  Created by Dr.Mac on 24/02/22.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet var lblB: UILabel!
    @IBOutlet var lblA: UILabel!
    @IBOutlet var img1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
