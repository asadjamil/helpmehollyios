//
//  MainViewController.swift
//  HelpMeHolly
//
//  Created by Asad Jamil on 5/16/18.
//  Copyright © 2018 Asad Jamil. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {

    static func instantiateViewController() -> MainViewController {
        let name = String(describing: MainViewController.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: name) as! MainViewController
        return viewController
    }
    
    // MARK: - Outlets
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    
    @IBAction func signInBtnTapped(_ sender: Any) {
        let signInVC = LoginViewController.instantiateViewController()
        present(signInVC, animated: true, completion: nil)
    }
    
    @IBAction func signUpBtnTapped(_ sender: Any) {
        let signUpVC = SignUpViewController.instantiateViewController()
        let navController = UINavigationController(rootViewController: signUpVC)
        present(navController, animated: true, completion: nil)
    }
    // MARK: - Custom Functions

}
