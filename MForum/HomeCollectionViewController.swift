//
//  HomeCollectionViewController.swift
//  MForum
//
//  Created by KA CHON HO on 03/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomeCollectionViewController: UICollectionViewController {
    
    var showScrollView = UIScrollView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate

//        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let firstviewcontroller = mainStoryboard.instantiateViewController(withIdentifier: "FirstTableViewController") as! FirstTableViewController
//
//        let secondviewcontroller = mainStoryboard.instantiateViewController(withIdentifier: "SecondTableViewController") as! SecondViewController
//
//        let thirdviewcontroller = mainStoryboard.instantiateViewController(withIdentifier: "ThirdTableViewController") as! ThirdTableViewController
//
//        let fourthviewcontroller = mainStoryboard.instantiateViewController(withIdentifier: "fourthTableViewController") as! FourthTableViewController
        
//
//        secondviewcontroller.view.frame.origin.x = self.view.frame.width
//        secondviewcontroller.view.frame.origin.y = 0
//
//        thirdviewcontroller.view.frame.origin.x = self.view.frame.width
//        thirdviewcontroller.view.frame.origin.y = 0
//
//        fourthviewcontroller.view.frame.origin.x = self.view.frame.width
//        fourthviewcontroller.view.frame.origin.y = 0
//
//        self.showScrollView.addSubview(firstviewcontroller.view)
//        firstviewcontroller.didMove(toParent: self)
//
//        self.addChild(secondviewcontroller)
//        self.showScrollView.addSubview(secondviewcontroller.view)
//        secondviewcontroller.didMove(toParent: self)
//
//        self.addChild(thirdviewcontroller)
//        self.showScrollView.addSubview(thirdviewcontroller.view)
//        thirdviewcontroller.didMove(toParent: self)
//
//        self.addChild(fourthviewcontroller)
//        self.showScrollView.addSubview(fourthviewcontroller.view)
//        fourthviewcontroller.didMove(toParent: self)
//        
//        showScrollView.contentSize = CGSize(width: self.view.frame.width , height: self.view.frame.height)
        
//        func scrollViewDidEndDecelerating(_scrollView: UIScrollView) {
//            let pageNum = Int(round(showScrollView.contentOffset.x / showScrollView.frame.size.width))
//            for i in 0...menulist.count-1 (
//                collectionView(menuCollecti)
//            )
//        }
        
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
