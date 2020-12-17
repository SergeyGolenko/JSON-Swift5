//
//  CustomCellTableViewCell.swift
//  Swift5
//
//  Created by Сергей Голенко on 17.12.2020.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var pictureForCustomCell: UIImageView!
    @IBOutlet weak var titileForCustomCell: UILabel!
    @IBOutlet weak var subtitleForCustomCell: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
