//
//  LoginViewController.swift
//  VChores
//
//  Created by John Lim on 4/23/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { user, error in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { success, error in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField.layer.masksToBounds = true
        usernameField.layer.borderColor = CGColor(red: 112/255, green: 162/255, blue: 48/255, alpha: 1)
        usernameField.layer.borderWidth = 1.0
        usernameField.layer.cornerRadius = 15
        
        passwordField.layer.masksToBounds = true
        passwordField.layer.borderColor = CGColor(red: 112/255, green: 162/255, blue: 48/255, alpha: 1)
        passwordField.layer.borderWidth = 1.0
        passwordField.layer.cornerRadius = 15
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
