//
//  MainViewController.swift
//  azazazaza_o
//
//  Created by Sergey Sheba on 6/14/17.
//  Copyright © 2017 Sebbuska. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let cellHeigth: CGFloat = 100.0
    
    @IBOutlet weak var fadingGradientView: FadingGradientView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var fadingView: UIView!
    
    @IBOutlet weak var fadingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setNavigationBarHidden(true, animated: false)
        view.alpha = 0
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        let startY = (cellHeigth/UIScreen.main.bounds.height) * 2
        gradientLayer.startPoint = CGPoint(x: 0.0, y: startY)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
        transparrencyGradientLayer = gradientLayer
        
        fadingView.layer.mask = transparrencyGradientLayer
        tableView.contentInset.bottom = UIScreen.main.bounds.height - cellHeigth*2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 0.6) {
            self.view.alpha = 1.0
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        transparrencyGradientLayer?.frame = fadingView.bounds
    }
    
    private var transparrencyGradientLayer: CAGradientLayer?
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: String(describing: ListCell.self)) as! ListCell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeigth
    }
}
