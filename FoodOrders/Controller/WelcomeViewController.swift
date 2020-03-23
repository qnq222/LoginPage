//
//  ViewController.swift
//  FoodOrders
//
//  Created by Ayman  on 3/19/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.masksToBounds = true
        mainView.layer.cornerRadius = mainView.frame.size.width / 2
        
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        upSwipe.direction = .up
        view.addGestureRecognizer(upSwipe)
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
    {
        if (sender.direction == .up)
        {//goToLogin
            performSegue(withIdentifier: "goToLogin", sender: self)
        }
    }
    
    
}


