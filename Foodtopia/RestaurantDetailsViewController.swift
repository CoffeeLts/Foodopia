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
    
    var imagesArray = [UIImage]()
    var restaurant: Restaurant?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagesArray = [UIImage(named: restaurant!.image)!, UIImage(named: restaurant!.menu)!]
        
        
//        for i in 0..<imagesArray.count{
//            
//            let imageView = UIImageView()
//            imageView.image = imagesArray[i]
//            
//            let xPosition = self.view.frame.width * CGFloat(i)
//            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.height)
//            
//            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
//            
//            
//            
//            mainScrollView.addSubview(imageView)
//        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
