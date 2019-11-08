//
//  LogInPageViewController.swift
//  MForum
//
//  Created by Joe Tran on 01/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit
import Firebase


class LogInPageViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    
    @IBAction func LoginButton(_ sender: Any) {
        
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
        }
        
        Auth.auth().signIn(withEmail: email!, password: password!) { (user, error) in
        // 登入失敗
        if error != nil {
            
            let alertMessage = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertMessage.addAction(cancelAction)
            
            self.present(alertMessage, animated: true, completion: nil)
        }
            // 登入成功並顯示已登入
        else {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
            self.navigationController?.pushViewController(vc, animated: true)


            }
            
            
        }
         

        }
          
    
    

    override func viewDidLoad() {
        
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
            
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
        self.view.addGestureRecognizer(tap)
        
        }
    @objc func dismissKeyBoard() {
        self.view.endEditing(true)
//        super.viewDidLoad()
        
        

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

