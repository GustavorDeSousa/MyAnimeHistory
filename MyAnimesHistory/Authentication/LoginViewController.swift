//
//  LoginViewController.swift
//  MyAnimesHistory
//
//  Created by Gustavo De Sousa on 10/04/19.
//  Copyright © 2019 Gustavo De Sousa. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btLogin.layer.cornerRadius = 20
        btLogin.clipsToBounds = true
        btLogin.backgroundColor = APPCOLOR.BUTTON_PRIMARY
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func ClickLogin(_ sender: Any) {
        Auth.auth().signIn(withEmail: tfEmail.text!, password: tfPassword.text!) { (result, error) in
            if error == nil {
                self.navigationController?.pushViewController(DetailsAnimeViewController.create(), animated: true)
            } else {
                let alert = UIAlertController(title: "Senha ou Usúario invalidos", message: "Sua senha ou usúario podem ter sido preenchidos errados.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Tentar Novamente!", style: .default, handler: nil))
                self.present(alert, animated: true)
            }
        }
    }
    
    @IBAction func ClickForgotPassword(_ sender: Any) {
    }
    
    @IBAction func ClickCreateAccount(_ sender: Any) {
        self.navigationController?.pushViewController(CreateAccountViewController.create(), animated: true)
    }
}
