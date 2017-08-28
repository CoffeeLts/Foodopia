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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        self.collectionView!.register(HomePageCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
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
        
        return 12
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomePageCell
    
        // Configure the cell
    
        return cell
    }
    
   override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("IndexPath = \(indexPath.item)")
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let w = Double(UIScreen.main.bounds.size.width)
        
        if (indexPath.row % 5) < 2 {
            // 0.5 = (0 + 1 + 0) / 2
            return CGSize(width: w/2 - 1.5, height: (w/2 - 1.0) * 1.3)
        }
        else if (indexPath.row % 5) > 1 {
            // 0.666 = (0 + 1 + 1 + 0) / 3
            return CGSize(width: w/3 - 1.8, height: (w/3 - 1.0) * 1.3)
        }
        else {
            return CGSize(width: w/2 - 1.5, height: (w/2 - 1.0) * 1.3)
        }
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
