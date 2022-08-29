//
//  ViewController.swift
//  TinhTienDien
//
//  Created by Luyện Hà Luyện on 8/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func actionTinh(_ sender: UIButton) {
        if let number = Int(inputText.text ?? ""), number > 0 {
            var money = 0
            switch number {
            case ...50:
                money = number * 1549
            case 50...100:
                money = 50*1549 + (number-50)*1600
            case 100...200:
                money = 50*1549 + 50*1600 + (number-100)*1858
            default:
                money = 50*1549 + 50*1600 + 100*1858 + (number-200)*2340
            
            let alertController = UIAlertController(title: "Thông báo", message: "Tiền điện là; \(money)", preferredStyle: .alert)
                
            let okAction = UIAlertAction(title: "OK", style:  . default) {_ in
                self.inputText.text = ""}
            }
            } else {
                let alertController = UIAlertController(title: "Error", message: "Nhập lại", preferredStyle: .alert)
        
                let okAction = UIAlertAction(title: "OK", style:  . default) {_ in
            self.inputText.text = ""
                }
                alertController.addAction(okAction)
                present(alertController, animated: true)
                }
            }
    }
