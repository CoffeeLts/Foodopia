//
//  SwapViewController.swift
//  Foodtopia
//
//  Created by kiam on 2017/9/10.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import UIKit

class SwapViewController: UIViewController {
    

    @IBOutlet var firstView: UIView!
    
    @IBOutlet var secondView: UIView!
    var referenceToController: SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func flip(_ flippedCard:Bool) {
        var fromView: UIView?
        var toView: UIView?
        
        
        if let view = flippedCard ? self.firstView : self.secondView {
            print("fromView is not nil")
            
            fromView = view
            
        }
        
        if let view = flippedCard ? self.secondView : self.firstView {
             print("toView is not nil")
            
            toView = view
        }
        
        
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionCurlUp, .showHideTransitionViews])
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
