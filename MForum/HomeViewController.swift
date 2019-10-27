//
//  HomeViewController.swift
//  MForum
//
//  Created by KA CHON HO on 02/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    enum TabIndex : Int {
         case firstChildTab = 0
         case secondChildTab = 1
         case thirdChildTab = 2
         case fourthChildTab = 3
         
    }
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var segmentedControl : CHSegmentedControl!
       var currentViewController: UIViewController?
    
//    lazy var zeroChildTabVC: UIViewController? = {
//        let zeroChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "ZeroTableViewController")
//         return zeroChildTabVC
//    }()
    
   lazy var firstChildTabVC: UIViewController? = {
       let firstChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "FirstTableViewController")
       return firstChildTabVC
   }()
    
   lazy var secondChildTabVC : UIViewController? = {
       let secondChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondTableViewController")
       
       return secondChildTabVC
   }()
    
    lazy var thirdChildTabVC : UIViewController? = {
        let thirdChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdTableViewController")
        return thirdChildTabVC
    }()
    
    lazy var fourthChildTabVC : UIViewController? = {
        let fourthChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "FourthTableViewController")
    
      return fourthChildTabVC
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        segmentedControl.initUI()
        segmentedControl.selectedSegmentIndex = TabIndex.firstChildTab.rawValue
        displayCurrentTab(TabIndex.firstChildTab.rawValue)
        
        self.tabBarController?.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate

        // Do any additional setup after loading the view.
    }
    
   
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let currentViewController = currentViewController{
            currentViewController.viewWillDisappear(animated)
        }
    }
    
    @IBAction func switchTabs(_ sender: UISegmentedControl) {
        self.currentViewController!.view.removeFromSuperview()
        self.currentViewController!.removeFromParent()
        
        displayCurrentTab(sender.selectedSegmentIndex)
    }

    func displayCurrentTab(_ tabIndex: Int){
        if let vc = viewControllerForSelectedSegmentIndex(tabIndex) {
            
            self.addChild(vc)
            vc.didMove(toParent: self)
            
            vc.view.frame = self.contentView.bounds
            self.contentView.addSubview(vc.view)
            self.currentViewController = vc
            
        }
    }
    
    
    func viewControllerForSelectedSegmentIndex(_ index: Int) -> UIViewController? {
        var vc: UIViewController?
        switch index {
            
       
        case TabIndex.firstChildTab.rawValue :
            vc = firstChildTabVC
        case TabIndex.secondChildTab.rawValue :
            vc = secondChildTabVC
        case TabIndex.thirdChildTab.rawValue :
            vc = thirdChildTabVC
        case TabIndex.fourthChildTab.rawValue :
            vc = fourthChildTabVC
            
        default:
        return nil
        }
    
        return vc
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
