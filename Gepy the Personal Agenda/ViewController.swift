//
//  ViewController.swift
//  Gepy the Personal Agenda
//
//  Created by Jayden Bulexa on 9/9/17.
//  Copyright © 2017 Jayden B. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    //Connect Buttons
    @IBOutlet weak var firstClass: UIButton!
    @IBOutlet weak var secondClass: UIButton!
    @IBOutlet weak var thirdClass: UIButton!
    @IBOutlet weak var fourthClass: UIButton!
    @IBOutlet weak var fifthClass: UIButton!
    @IBOutlet weak var sixthClass: UIButton!
    @IBOutlet weak var seventhClass: UIButton!
    //Load View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = UserDefaults.standard.array(forKey: "savedClassDetails") ?? [String]()
        print(array)
        
        self.navigationController?.navigationBar.alpha = 0
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 38/255, green: 38/255, blue: 38/255, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "impact", size: 30)!, NSForegroundColorAttributeName : UIColor.white]
        
        firstClass.setTitle(array[0] as? String, for: [])
        secondClass.setTitle(array[1] as? String, for: [])
        
        thirdClass.setTitle(array[2] as? String, for: [])
        fourthClass.setTitle(array[3] as? String, for: [])
        fifthClass.setTitle(array[4] as? String, for: [])
        sixthClass.setTitle(array[5] as? String, for: [])
        seventhClass.setTitle(array[6] as? String, for: [])
    }    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    
    
}

