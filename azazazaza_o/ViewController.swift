//
//  ViewController.swift
//  azazazaza_o
//
//  Created by Sergey Sheba on 6/14/17.
//  Copyright © 2017 Sebbuska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var getInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func getInButtonAction(_ sender: Any) {
        animateIn()
    }

    func animateIn() {
        UIView.animate(withDuration: 0.3, animations: { 
            self.getInButton.transform = CGAffineTransform.init(scaleX: 4.0, y: 4.0)
            self.getInButton.alpha = 0.0
        }) { (finished) in
            self.getInButton.isHidden = true
            self.getInButton.transform = CGAffineTransform.identity
            self.performSegue(withIdentifier: "ShowController", sender: self)
        }
    }
}
