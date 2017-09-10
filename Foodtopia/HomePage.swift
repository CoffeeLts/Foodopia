//
//  HomePage.swift
//  Foodtopia
//
//  Created by RTC13 on 2017/8/24.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomePage: UICollectionViewController , UICollectionViewDelegateFlowLayout, UISearchBarDelegate{
    
//    Variables
    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    
    var imageArray = ["img1", "img2", "img3", "img4", "img5", "img6", "img7"]
    
    var restaurants: [Restaurant] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        restaurants = RandomRestaurant.randomUniqueRestaurant(restaurants: appDelegate.restaurants, range: 12)
//        for _ in 0..<12 {
//            restaurants.append(RandomRestaurant.randomRestaurant(restaurants: appDelegate.restaurants) )
//            
//        }
        createSearchBar()
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
          performSegue(withIdentifier: "searchView", sender: self)
    }
    
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//       
//            performSegue(withIdentifier: "searchView", sender: self)
//        
//    }
    
    
    func createSearchBar() {
        searchBar = UISearchBar()
        
        
        searchBar.showsScopeBar = false
        searchBar.placeholder = "Enter your search here!"
     
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
        
    }

    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
       
        
    }
    

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return self.restaurants.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomePageCell
    
        // Configure the cell
        
        print(restaurants[indexPath.item].image)
        
        cell.imageView.image = UIImage(named: self.restaurants[indexPath.item].image)
        print(restaurants[indexPath.item].name)
        
        print(cell.bounds.width)
        print(cell.bounds.height)

//        let overlay: UIView = UIView(frame: CGRect(x: 0, y: cell.bounds.height * 0.8 , width: cell.bounds.width, height: cell.bounds.height))
//        overlay.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
//        cell.imageView.addSubview(overlay)
        
        cell.labelText = restaurants[indexPath.item].name
        cell.setupViews(cellWidth: cell.bounds.width, cellHeight: cell.bounds.height)
        
        
        
        
        
        
//        cell.imageView.layer.insertSublayer(addLayer(imageView: cell.imageView, cellWidth: cell.bounds.width, cellHeight: cell.bounds.height ), at: 0)
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
    
    func addLayer(imageView: UIImageView, cellWidth: CGFloat, cellHeight: CGFloat) -> CAGradientLayer {
        imageView.layer.sublayers?.removeAll()
        
        
        let color1 = UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0).cgColor
        let color2 = UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0).cgColor
        let color3 =  UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.8).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.locations = [ 0.4, 0.7, 1.0]
        
        gradientLayer.frame = CGRect(x: 0.0 , y: 0.0 , width: cellWidth, height: cellHeight)
        
        
        return gradientLayer
    }

    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("IndexPath = \(indexPath.item)")
        showDetails(indexPath: indexPath)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "restaurantDetailSegue" {
            if let indexPath = sender as? IndexPath {
                let destinationController = segue.destination as! RestaurantDetailsViewController
                //destinationController.restaurant =
                destinationController.restaurant = restaurants[indexPath.item]
            }

        }
    }
    
    func showDetails(indexPath: IndexPath){
        self.performSegue(withIdentifier: "restaurantDetailSegue", sender: indexPath)
    }
}
