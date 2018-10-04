//
//  SignUpExpertiseViewController.swift
//  HelpMeHolly
//
//  Created by Asad Jamil on 5/17/18.
//  Copyright © 2018 Asad Jamil. All rights reserved.
//

import UIKit

class SignUpExpertiseViewController: UIViewController {

    static func instantiateViewController() -> SignUpExpertiseViewController {
        let name = String(describing: SignUpExpertiseViewController.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: name) as! SignUpExpertiseViewController
        return viewController
    }
    
    // Outlets
    
    @IBOutlet weak var expertiseTextField: UITextField!
    
    @IBOutlet weak var aboutTextField: UITextField!
    @IBOutlet weak var workTextField: UITextField!
    @IBOutlet weak var videoCallTextField: UITextField!
    @IBOutlet weak var audioCallTextField: UITextField!
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}
extension SignUpExpertiseViewController
{
    func setupLayout() {
        setupTextFieldPadding()
    }
    func setupTextFieldPadding() {
    expertiseTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left8px))
    aboutTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left8px))
    workTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left8px))
    videoCallTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left8px))
    audioCallTextField.setLeftPaddingPoints(CGFloat(Constants.TextField.Padding.left8px))
    }
}
