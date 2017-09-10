//
//  File.swift
//  Foodtopia
//
//  Created by lily on 2017/9/10.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(text: String){
        label.text = text
    }
    
}
