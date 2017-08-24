//
//  HomePageCell.swift
//  Foodtopia
//
//  Created by RTC13 on 2017/8/24.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class HomePageCell: UICollectionViewCell {
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init(coder eDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func setupViews(){
        self.backgroundColor = UIColor.red
    }
    
   
 
}
