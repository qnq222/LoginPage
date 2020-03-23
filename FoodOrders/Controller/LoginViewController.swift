//
//  LoginViewController.swift
//  FoodOrders
//
//  Created by Ayman  on 3/19/20.
//  Copyright © 2020 Ayman . All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.masksToBounds = true
        mainView.layer.cornerRadius = 50
        
        loginBtn.layer.cornerRadius = 12
        
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
    {
        if (sender.direction == .right)
        {//goToLogin
            performSegue(withIdentifier: "goToRegister", sender: self)
        }
    }
    
    
}
