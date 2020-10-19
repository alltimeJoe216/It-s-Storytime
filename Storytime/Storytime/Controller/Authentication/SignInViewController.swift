//
//  SignInViewController.swift
//  Storytime
//
//  Created by Joseph Veverka on 10/12/20.
//

import UIKit


@IBDesignable
class SignInViewController: UIViewController {

    @IBOutlet var faceBookLoginButtonOutlet: UIButton!
    @IBOutlet var signInButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButtonOutlet.layer.cornerRadius = 25
        faceBookLoginButtonOutlet.layer.cornerRadius = 25
        signInButtonOutlet.layer.masksToBounds = true
        faceBookLoginButtonOutlet.layer.masksToBounds = true
    }

}
