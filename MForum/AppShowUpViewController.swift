//
//  BookmarkViewController.swift
//  MForum
//
//  Created by Joe Tran on 01/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit

class AppShowUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogInButtonPressed(_ sender: Any) {
        
        // go to logInPage when logIn button pressed
        let logInPageViewController = storyboard?.instantiateViewController(withIdentifier: "LogInPageViewController") as! LogInPageViewController
        present(logInPageViewController, animated: true, completion: nil)
        
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
