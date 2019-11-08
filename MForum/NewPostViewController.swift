//
//  NewPostViewController.swift
//  MForum
//
//  Created by KA CHON HO on 02/10/2019.
//  Copyright © 2019 MForum. All rights reserved.
//

import UIKit
import Firebase

class NewPostViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
   
    
    
    var ChannelList = ["綜合", "時事", "校園", "工作"]
    let ChannelPicker = UIPickerView()
    
@IBAction func dismissBtn(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
}
    
    @IBOutlet weak var TitleTextField : UITextField!
    @IBOutlet weak var DetailTextView : UITextView!
    @IBOutlet weak var ChannelListView : UITextField!
    
    
    
    @IBAction func addPostButton (_ sender: AnyObject){
        
//        var ref: DatabaseReference!
//        ref = Database.database().reference(withPath: "POST")
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ChannelPicker.delegate = self
        ChannelPicker.dataSource = self
        ChannelListView.inputView = ChannelPicker

        // Do any additional setup after loading the view.
    }
    
    
    
    //PICKER
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
           return ChannelList.count
       }
       
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
              return ChannelList[row]
          }
          
          func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           ChannelListView.text = ChannelList[row]
            
              self.view.endEditing(false)
           
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
