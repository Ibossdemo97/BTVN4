//
//  ViewController.swift
//  iamrich
//
//  Created by Luyện Hà Luyện on 8/17/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picture1: UIImageView!
    @IBOutlet weak var picture2: UIImageView!
    @IBOutlet weak var text1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        
        picture1.frame = CGRect(x: view.center.x - 187, y: view.center.y - 100, width: 374, height: 217)
        picture2.frame = CGRect(x: view.center.x - 187, y: view.center.y - 100, width: 374, height: 217)
        picture1.alpha = 1.0
        picture2.alpha = 0.0
        text1.center = CGPoint(x: view.center.x, y: view.center.y + 500)
        
        UIView.animate(withDuration: 5) {
            self.picture1.alpha = 0.0
            self.picture2.alpha = 1.0
            self.text1.center.y = self.view.center.y + 150
        }
    }
    


}

