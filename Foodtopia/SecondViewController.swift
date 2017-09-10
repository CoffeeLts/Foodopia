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
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImage.image = #imageLiteral(resourceName: "question_mark")
        currentRandom = RandomRestaurant.randomRestaurant(restaurants: appDelegate.restaurants)
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
            fromView = self.firstView
            toView = self.secondView
            firstImage.image = UIImage(named: (currentRandom?.image)!)
            secondImage.image = UIImage(named: (currentRandom?.image)!)
        }else {
            fromView = self.secondView
            toView = self.firstView
            firstImage.image = UIImage(named: (currentRandom?.image)!)
            secondImage.image = UIImage(named: (currentRandom?.image)!)
        }
        
        currentRandom = RandomRestaurant.randomRestaurant(restaurants: appDelegate.restaurants)
        
        UIView.transition(from: fromView, to: toView, duration: 0.5, options: [.transitionCrossDissolve, .showHideTransitionViews])
    }

    @IBAction func buttonChangeView(_ sender: UIButton) {
        print("123456")
        if firstImage.image != #imageLiteral(resourceName: "question_mark") {
            performSegue(withIdentifier: "showDetails", sender: sender)
        }else{
            return;
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let destinationController = segue.destination as! ShowDetailViewController
            destinationController.text = "123"
        }
    }
    
    func exmple () {
        self.viewController.layer.shadowColor = UIColor.black.cgColor
        self.viewController.layer.shadowOpacity = 0.6
        self.viewController.layer.shadowOffset = CGSize(width: -5, height: 3)
        self.viewController.layer.shadowRadius = 1
    }
}

