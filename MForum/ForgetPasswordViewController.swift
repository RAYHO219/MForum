//
//  ForgetPasswordViewController.swift
//  MForum
//
//  Created by Joe Tran on 01/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit
import Firebase

class ForgetPasswordViewController: UIViewController {
    
    @IBOutlet weak var emailTextField : UITextField!
    
    @IBAction func ResetPassword(_sender: AnyObject){
        
        if self.emailTextField.text == "" {
            
            let alerMessage = UIAlertController(title: "請輸入EMAIL", message: nil, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
            alerMessage.addAction(cancelAction)
             
            present(alerMessage, animated: true, completion: nil)
        }
        
        else {
            
            Auth.auth().sendPasswordReset(withEmail: self.emailTextField.text!, completion: {(error) in
                
                var title = ""
                var message = ""
                
                if error != nil {
                    title = "Error"
                    message = (error?.localizedDescription)!
                } else {
                    title = "Success"
                    message = "Password reset email sent."
                    self.emailTextField.text = ""
                }
                
                let alerMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
                           let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                           alerMessage.addAction(cancelAction)
                            
                self.present(alerMessage, animated: true, completion: nil)
            })
            
        }
        
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
