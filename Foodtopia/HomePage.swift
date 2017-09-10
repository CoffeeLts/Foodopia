//
//  HomePage.swift
//  Foodtopia
//
//  Created by RTC13 on 2017/8/24.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomePage: UICollectionViewController , UICollectionViewDelegateFlowLayout{
    
//    Variables
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    var imageArray = ["img1", "img2", "img3", "img4", "img5", "img6", "img7"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

//        self.collectionView!.register(HomePageCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        setupCollectionView()
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
       
        
    }
    
    
    func setupCollectionView(){
        let screenHeight:CGFloat = UIScreen.main.bounds.height
        
        print(screenHeight)
        print(view.bounds.height)

        //let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout

        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return self.appDelegate.restaurants.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomePageCell
    
        // Configure the cell
        cell.imageView.image = UIImage(named: imageArray[indexPath.row])
        
//        if (indexPath.row % 5) < 2 {
//            
//            cell.imageView.layer.insertSublayer(addLayer(imageView: cell.imageView, index: 2), at: 0)
//        }
//        else if (indexPath.row % 5) > 1 {
//            cell.imageView.layer.insertSublayer(addLayer(imageView: cell.imageView, index: 3), at: 0)
//            
//        }
//        else {
//            cell.imageView.layer.insertSublayer(addLayer(imageView: cell.imageView, index: 2), at: 0)
//
//        }
        
        return cell
    }
    
    //Cell sizing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let w = Double(UIScreen.main.bounds.size.width)
        
        if (indexPath.row % 5) < 2 {
            // 0.5 = (0 + 1 + 0) / 2
            return CGSize(width: w/2 - 1.5, height: w/2 - 1.5)
        }
        else if (indexPath.row % 5) > 1 {
            // 0.666 = (0 + 1 + 1 + 0) / 3
            return CGSize(width: w/3 - 1.8, height: w/3 - 1.8)
        }
        else {
            return CGSize(width: w/2 - 1.5, height: w/2 - 1.5)
        }
    }
    
    func addLayer(imageView: UIImageView, index: Int) -> CAGradientLayer {
        imageView.layer.sublayers?.removeAll()
        let w = Double(UIScreen.main.bounds.size.width)
        
        let color1 = UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0).cgColor
        let color2 = UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0).cgColor
        let color3 =  UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.7).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.locations = [ 0.0, 0.4, 1.0]
        
        gradientLayer.frame = CGRect(x: 0.0 , y: 0.0 , width: w/2 - 5, height: Double((w / CDouble(index) - 1) * 1.3))
        
        
        return gradientLayer
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("IndexPath = \(indexPath.item)")
        showDetails(indexPath: indexPath.row)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "restaurantDetailSegue" {
            if let indexPath = self.collectionView?.indexPathsForSelectedItems {
                let destinationController = segue.destination as! RestaurantDetailsViewController
//                destinationController.restaurant =
            }

        }
    }
    
    func showDetails(indexPath: Int){
        self.performSegue(withIdentifier: "restaurantDetailSegue", sender: indexPath)
    }

    
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
