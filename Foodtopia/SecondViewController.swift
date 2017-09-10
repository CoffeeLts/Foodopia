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
    
    
    var flipedCard = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //stuff
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func randomButton(_ sender: UIButton) {
        
//        DispatchQueue.main.async {
//            for _ in 0..<10 {
                self.flipedCard = !self.flipedCard
                
                let fromView = self.flipedCard ? self.firstView : self.secondView
                let toView = self.flipedCard ? self.secondView : self.firstView

                
                UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionCrossDissolve, .showHideTransitionViews])
//            }
//        }
        
        
    }

}

