//
//  RestaurantDetailsViewController.swift
//  Foodtopia
//
//  Created by lily on 2017/9/9.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    @IBOutlet var mainScrollView: UIScrollView!
    
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var name: UILabel!
    
    var imagesArray = [UIImage]()
    var restaurant: Restaurant?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesArray = [UIImage(named: restaurant!.image)!, UIImage(named: restaurant!.menu)!]
        
        //mainScrollView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.width)
        
        mainScrollView.frame.size.width = UIScreen.main.bounds.width
        mainScrollView.frame.size.height = UIScreen.main.bounds.width
        mainScrollView.backgroundColor = UIColor.black
        mainScrollView.isPagingEnabled = true
        self.automaticallyAdjustsScrollViewInsets = false
        
        
        mainScrollView.contentSize = CGSize (width: self.view.bounds.width * 2.0, height: UIScreen.main.bounds.width)
        print("a + \(mainScrollView.contentSize.width)")
        print("b + \(UIScreen.main.bounds.width)")
        print("a + \(self.view.bounds.width)")
       
        mainScrollView.showsHorizontalScrollIndicator = false
        
        loadImages()

        
        self.name.text = restaurant?.name
        self.address.text  = restaurant?.location
        self.phoneNumber.text = restaurant?.phone
    }
    
    func loadImages(){
        for (index, images) in imagesArray.enumerated() {
            let imageView = UIImageView(frame: CGRect( x: CGFloat(index) * view.bounds.size.width, y: 0, width: self.view.bounds.width, height: mainScrollView.contentSize.height ))
            
            imageView.image = images
            imageView.contentMode = .scaleAspectFit
            mainScrollView.addSubview(imageView)
            print(imageView.frame.height)
        
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
