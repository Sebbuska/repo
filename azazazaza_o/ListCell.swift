//
//  ListCell.swift
//  azazazaza_o
//
//  Created by Sergey Sheba on 6/15/17.
//  Copyright © 2017 Sebbuska. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var topContentView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
        topContentView.backgroundColor = UIColor.white.withAlphaComponent(0.45)
        topContentView.layer.masksToBounds = true
        topContentView.layer.cornerRadius = 15
        topContentView.layer.borderColor = UIColor.darkGray.withAlphaComponent(0.85).cgColor
        topContentView.layer.borderWidth = 0.5
        
        backgroundView?.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
    }
}
