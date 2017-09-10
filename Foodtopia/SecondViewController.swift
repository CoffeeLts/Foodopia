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
    
    var array = ["#FF0088", "#CC0000", "#886600"]
    
    
    var flipedCard = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstImage.image = #imageLiteral(resourceName: "question_mark")
//        firstImage.backgroundColor = UIColor(red: 0xFF/255, green: 0x00/255, blue: 0x88/255, alpha: 1)
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
            firstImage.image = #imageLiteral(resourceName: "img2")
            secondImage.image = #imageLiteral(resourceName: "img1")
//            firstImage.backgroundColor = UIColor(red: 0xCC/255, green: 0x00/255, blue: 0x00/255, alpha: 1)
//            secondImage.backgroundColor = UIColor(red: 0xFF/255, green: 0x00/255, blue: 0x88/255, alpha: 1)
        }else {
            fromView = self.secondView
            toView = self.firstView
            firstImage.image = #imageLiteral(resourceName: "img2")
            secondImage.image = #imageLiteral(resourceName: "img1")
//            secondImage.backgroundColor = UIColor(red: 0xFF/255, green: 0x00/255, blue: 0x88/255, alpha: 1)
//            firstImage.backgroundColor = UIColor(red: 0xCC/255, green: 0x00/255, blue: 0x00/255, alpha: 1)
        }
        
            
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
    
    
}

