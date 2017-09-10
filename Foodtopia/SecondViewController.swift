//
//  SecondViewController.swift
//  Foodtopia
//
//  Created by RTC13 on 2017/8/24.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var firstView: UIView!
    @IBOutlet var secondView: UIView!
    @IBOutlet var firstImage: UIImageView!
    @IBOutlet var secondImage: UIImageView!
    @IBOutlet var viewController: UIView!
    
    var flipedCard = false
    var currentRandom : Restaurant?
    var tempRestaurant : Restaurant?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var overlay:UIView?
    var label:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImage.image = #imageLiteral(resourceName: "question_mark")
        currentRandom = RandomRestaurant.randomRestaurant(restaurants: appDelegate.restaurants)
        tempRestaurant = currentRandom
        exmple()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func randomButton(_ sender: UIButton) {
        self.flipedCard = !self.flipedCard
        var fromView : UIView
        var toView : UIView
        
        if self.flipedCard == true {
            fromView = self.firstView//returnViewWithLayers(self.firstView)
            toView = self.secondView//returnViewWithLayers(self.secondView)
            firstImage.image = UIImage(named: (currentRandom?.image)!)
            secondImage.image = UIImage(named: (currentRandom?.image)!)
        }else {
            fromView = self.secondView//returnViewWithLayers(self.secondView)
            toView = self.firstView//returnViewWithLayers(self.firstView)
            firstImage.image = UIImage(named: (currentRandom?.image)!)
            secondImage.image = UIImage(named: (currentRandom?.image)!)
        }
        tempRestaurant = currentRandom
        currentRandom = RandomRestaurant.randomRestaurant(restaurants: appDelegate.restaurants)
        
        UIView.transition(from: fromView, to: toView, duration: 0.5, options: [.transitionCrossDissolve, .showHideTransitionViews])
    }

    @IBAction func buttonChangeView(_ sender: UIButton) {
        print("123456")
        if firstImage.image != #imageLiteral(resourceName: "question_mark") {
            performSegue(withIdentifier: "restaurantDetailSegue", sender: sender)
        }else{
            return;
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "restaurantDetailSegue" {
            
            let destinationController = segue.destination as! RestaurantDetailsViewController
                //destinationController.restaurant =
            destinationController.restaurant = tempRestaurant
            
            
        }
    }
    
    func returnViewWithLayers(_ view: UIView) -> UIView{
//        view.subviews.removeAll()
        if(overlay != nil) && (label != nil){
            if view.subviews.contains(self.overlay!) && view.subviews.contains(self.label!) {
                self.overlay?.removeFromSuperview() // Remove it
                self.label?.removeFromSuperview()
                print("OVERLAYis removed")
            }
        }
        
        
        let viewHeight = firstView.frame.height
        let viewWidth = firstView.frame.width
        
        let yPoint = viewHeight * 0.8
    
        self.overlay = UIView(frame: CGRect(x: 0, y: yPoint, width: viewWidth, height: viewHeight - yPoint))
        overlay?.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
        if view.subviews.contains(overlay!) {
            overlay?.removeFromSuperview() // Remove it
              print("OVERLAYis removed")
        }
     
        
        view.addSubview(overlay!)
        
//        
//        let overlayLayer:CALayer = overlay.layer
//        view.layer.addSublayer(overlayLayer)
        
        
        label = UILabel(frame: CGRect(x: 0, y: yPoint, width: viewWidth, height: viewHeight - yPoint))
        label?.textColor = UIColor.white
        label?.textAlignment = .center
        label?.font = UIFont(name: (label?.font.fontName)!, size: 12)
        label?.text = tempRestaurant?.name
        

       
        view.addSubview(label!)
        
//        let labelLayer:CALayer = label.layer
//        view.layer.addSublayer(labelLayer)

        
//        view.addSubview(label)
        
        
        
        view.addConstraintsWithFormat("H:|-16-[v0]-16-|", views: label!)
        view.addConstraintsWithFormat("V:|-\(yPoint)-[v0]-0-|", views: label!)
        return view
    }
    
    func exmple () {
        self.viewController.layer.shadowColor = UIColor.black.cgColor
        self.viewController.layer.shadowOpacity = 0.6
        self.viewController.layer.shadowOffset = CGSize(width: -5, height: 3)
        self.viewController.layer.shadowRadius = 1
    }
}

