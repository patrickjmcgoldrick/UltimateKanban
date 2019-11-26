//
//  ViewController.swift
//  UltimateKanban
//
//  Created by dirtbag on 11/26/19.
//  Copyright © 2019 dirtbag. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var ftEmail: UITextField!

    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
    }

    @IBAction func btnSubmit(_ sender: Any) {
        
        guard let email = ftEmail.text else {
            print ("email fail")
            return }
        
        guard let password = tfPassword.text else {
            print ("password fail")
            return }
           
        if !email.isEmpty && !password.isEmpty {
            
            print ("Calling Network Manager")
            
            NetworkManager().get(username: email, password: password)

        } else {
            print ("empty login fields")
        }
        
        
    }
    
}

