//
//  Example2.swift
//  Foodtopia
//
//  Created by kiam on 2017/9/10.
//  Copyright © 2017年 SomeName. All rights reserved.
//

import Foundation
import UIKit

class Example2 : UIViewController {
    @IBOutlet weak var lblName: UILabel!
    var getName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblName.text! = getName
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
