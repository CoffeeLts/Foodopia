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
    
    var labelText:String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //custom logic goes here
        
    }
    
    
    
    func setupViews(cellWidth: CGFloat, cellHeight: CGFloat){
        
        let yPoint = cellHeight * 0.8
        
        let overlay: UIView = UIView(frame: CGRect(x: 0, y: yPoint, width: cellWidth, height: cellHeight))
        overlay.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
        addSubview(overlay)
        
        
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: yPoint, width: cellWidth, height: cellHeight))
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.font = UIFont(name: label.font.fontName, size: 12)
        label.text = labelText
        addSubview(label)
        
        
        
        addConstraintsWithFormat("H:|-16-[v0]-16-|", views: label)
        addConstraintsWithFormat("V:|-\(yPoint)-[v0]-0-|", views: label)

    }
    
 
    
   
 
}
