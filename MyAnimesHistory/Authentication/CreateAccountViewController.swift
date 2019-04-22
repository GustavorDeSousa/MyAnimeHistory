//
//  CreateAccountViewController.swift
//  MyAnimesHistory
//
//  Created by Gustavo De Sousa on 11/04/19.
//  Copyright © 2019 Gustavo De Sousa. All rights reserved.
//

import UIKit


class CreateAccountViewController: UIViewController {

    @IBOutlet weak var lbWelcome: UILabel!
    @IBOutlet weak var btCreateAccount: UIButton!
    @IBOutlet weak var btGoogle: UIButton!
    @IBOutlet weak var btFacebook: UIButton!
    @IBOutlet weak var backView: UIView!
    
    class func create() -> CreateAccountViewController {
        let controller = CreateAccountViewController(nibName: "CreateAccountViewController", bundle: nil)
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        backView.backgroundColor = APPCOLOR.BACKGROUND_APP
        
        btCreateAccount.layer.cornerRadius = 20
        btCreateAccount.setTitle("Cadastrar-se", for: .normal)
        btCreateAccount.clipsToBounds = true
        btCreateAccount.backgroundColor = APPCOLOR.BUTTON_PRIMARY
        
        btGoogle.layer.cornerRadius = 20
        btGoogle.setTitle("Google", for: .normal)
        btGoogle.clipsToBounds = true
        btGoogle.backgroundColor = APPCOLOR.BUTTON_GOOGLE

        btFacebook.layer.cornerRadius = 20
        btFacebook.setTitle("Facebook", for: .normal)
        btFacebook.clipsToBounds = true
        btFacebook.backgroundColor = APPCOLOR.BUTTON_FACEBOOK
        
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func ClickRegisterAccount(_ sender: Any) {
        self.navigationController?.pushViewController(RegisterAccountViewController.create(), animated: true)
    }
    
    @IBAction func btClose(_ sender: Any) {

    }
    
}
