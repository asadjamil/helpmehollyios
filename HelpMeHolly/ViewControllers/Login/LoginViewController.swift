//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Asad Jamil on 5/15/18.
//  Copyright © 2018 Asad Jamil. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    static func instantiateViewController() -> LoginViewController {
        let name = String(describing: LoginViewController.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: name) as! LoginViewController
        return viewController
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotPasswordTextField: UIButton!
    @IBOutlet weak var loginTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginLeadingConstant: NSLayoutConstraint!
    @IBOutlet weak var loginTrailingConstant: NSLayoutConstraint!
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interfaceSetup()
    }
   
    // MARK: - Actions
    
    @IBAction func signUpNowBtnTapped(_ sender: Any) {
        let signUpVC = SignUpViewController.instantiateViewController()
        let navController = UINavigationController(rootViewController: signUpVC)
        present(navController, animated: true, completion: nil)
    }
    
}

// MARK: - Custom Functions

extension LoginViewController {
    func interfaceSetup() {
        setupTextFieldPadding()
        loginConstraintSetup()
    }
    
    func setupTextFieldPadding() {
        emailTextField.setLeftPaddingPoints(20)
        passwordTextField.setLeftPaddingPoints(20)
    }
    
    func loginConstraintSetup() {
        if view.layer.frame.height < CGFloat( Constants.Screen.iPhone6.height) {
            loginTopConstraint.constant = 120
            loginLeadingConstant.constant = 45
            loginTrailingConstant.constant = 45
        }
    }
}
