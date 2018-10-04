//
//  SignUpViewController.swift
//  LoginApp
//
//  Created by Asad Jamil on 5/15/18.
//  Copyright © 2018 Asad Jamil. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    static func instantiateViewController() -> SignUpViewController {
        let name = String(describing: SignUpViewController.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: name) as! SignUpViewController
        return viewController
    }
    // MARK: - Outlets
    @IBOutlet weak var signUpBtnBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var placeOfBirthTextField: UITextField!
    @IBOutlet weak var dateOfBirthTextField: UITextField!
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        interfaceSetup()
    }
    
    // MARK: - Actions
    
    @IBAction func signUpNextBtnTapped(_ sender: Any) {
        let signUpExpertiseVC = SignUpExpertiseViewController.instantiateViewController()
        present(signUpExpertiseVC, animated: true, completion: nil)
    }
    
}
extension SignUpViewController {
    // MARK: - Custom Functions
    
    func interfaceSetup() {
        signUpBottomConstraintSetup()
        navigationBarSetup()
        setupTextFieldPadding()
    }
    
    func signUpBottomConstraintSetup() {
        if view.layer.frame.height < CGFloat( Constants.Screen.iPhone6.height) {
            signUpBtnBottomConstraint.constant = 10
        }
    }
    func navigationBarSetup() {
        
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "back-icon"), for: .normal)
        backButton.setTitle("", for: .normal)
        
        backButton.addTarget(self, action: #selector(self.backBtnTapped), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        
        // Title Bar Item
        navigationItem.title = "SIGN UP"
        
    }
    
    @objc func backBtnTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    func setupTextFieldPadding() {
        emailTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        firstNameTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        lastNameTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        phoneTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        passwordTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        confirmTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        locationTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        placeOfBirthTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
        dateOfBirthTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left))
    }
}

