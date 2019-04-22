//
//  RegisterAccountViewController.swift
//  MyAnimesHistory
//
//  Created by Gustavo De Sousa on 21/04/19.
//  Copyright © 2019 Gustavo De Sousa. All rights reserved.
//

import UIKit
import Firebase

class RegisterAccountViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfCelular: UITextField!
    @IBOutlet weak var tfNascimento: UITextField!
    @IBOutlet weak var selectGenero: UISegmentedControl!
    @IBOutlet weak var btRegister: UIButton!
    
    class func create() -> RegisterAccountViewController {
        let controller = RegisterAccountViewController(nibName: "RegisterAccountViewController", bundle: nil)
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectGenero.tintColor = APPCOLOR.BUTTON_PRIMARY
        
        self.title = "Registrar-se"
        
        btRegister.layer.cornerRadius = 20
        btRegister.setTitle("Registrar-se", for: .normal)
        btRegister.setTitleColor(.white, for: .normal)
        btRegister.clipsToBounds = true
        btRegister.backgroundColor = APPCOLOR.BUTTON_PRIMARY
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    @IBAction func ClickRegisterAccount(_ sender: Any) {
        Auth.auth().createUser(withEmail: tfEmail.text!, password: tfPassword.text!) { (result, error) in
            if error == nil {
                print("Conta criada com sucesso!!!")
            }
        }
    }
}
