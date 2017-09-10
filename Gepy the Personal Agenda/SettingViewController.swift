//
//  SettingViewController.swift
//  Gepy the Personal Agenda
//
//  Created by Jayden Bulexa on 9/9/17.
//  Copyright © 2017 Jayden B. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBOutlet weak var firstClass: UITextField!

    @IBOutlet weak var secondClass: UITextField!
    
    @IBOutlet weak var thirdClass: UITextField!
    
    @IBOutlet weak var fourthClass: UITextField!
    
    @IBOutlet weak var fifthClass: UITextField!
    
    @IBOutlet weak var sixthClass: UITextField!
    
    @IBOutlet weak var seventhClass: UITextField!
    
    @IBAction func onSaveButton(_ sender: Any) {
            var classArray = [AnyObject]()
            classArray.append(firstClass.text as AnyObject)
            classArray.append(secondClass.text as AnyObject)
            classArray.append(thirdClass.text as AnyObject)
            classArray.append(fourthClass.text as AnyObject)
            classArray.append(fifthClass.text as AnyObject)
            classArray.append(sixthClass.text as AnyObject)
            classArray.append(seventhClass.text as AnyObject)
            print(classArray)
        UserDefaults.standard.set(classArray, forKey: "savedClassDetails")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as! ViewController
        let navController = UINavigationController(rootViewController: vc)
         self.present(navController, animated: true, completion: nil)
    }
    
    

    
   override func viewDidLoad() {
        super.viewDidLoad()
    
    self.navigationController?.navigationBar.alpha = 0
   
    self.navigationController?.navigationBar.barTintColor = UIColor (red: 38/255, green: 38/255, blue: 38/255, alpha: 1.0)
   
    self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "impact", size: 30)!, NSForegroundColorAttributeName : UIColor.white]
    
       let array_get = UserDefaults.standard.array(forKey: "savedClassDetails") ?? [String]()
    print(array_get[0])
    }

 
    
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
