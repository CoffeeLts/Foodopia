//
//  HomePageCell.swift
//  Foodtopia
//
//  Created by RTC13 on 2017/8/24.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class HomePageCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //custom logic goes here
        
    }
    
    func setupViews(){
        self.backgroundColor = UIColor.red
        
    }
    
   
 
}
