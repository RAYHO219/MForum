//
//  SignUpPageViewController.swift
//  MForum
//
//  Created by Joe Tran on 01/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit
import Firebase
class SignUpPageViewController: UIViewController {

@IBOutlet weak var nameTextField: UITextField!
@IBOutlet weak var emailTextField: UITextField!
@IBOutlet weak var passwordTextField : UITextField!
    
    @IBAction func creatAccountAction(_ sender: AnyObject) {
        
       let email = self.emailTextField.text
       let password = self.passwordTextField.text
         
                     if email == "" || password == "" {
                       let alerMessage = UIAlertController(title: "請輸入EMAIL和密碼", message: nil, preferredStyle: .alert)
                       let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
                       alerMessage.addAction(cancelAction)
                        
                       present(alerMessage, animated: true, completion: nil)

                         return
                     }
                     else if (password?.count)! < 6 {

                       let alerMessage = UIAlertController(title: "密碼長度要大於6", message: nil, preferredStyle: .alert)
                       let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
                       alerMessage.addAction(cancelAction)
                        
                       present(alerMessage, animated: true, completion: nil)
                        
                     } else {
                     
                     // 建立帳號
                     Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                         
                         // 註冊失敗
                         if error != nil {
                            let alertMessage = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            alertMessage.addAction(cancelAction)
                            
                            self.present(alertMessage, animated: true, completion: nil)
                            
                         }
                         else {
                        
                            let alertMessage = UIAlertController(title: "註冊成功", message: nil, preferredStyle: .alert)
                            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                            alertMessage.addAction(cancelAction)
                            
                            self.present(alertMessage, animated: true, completion: nil)
                           
                        }
                         // 註冊成功並登入
                        }
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

