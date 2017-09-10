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

    @IBOutlet weak var firstClass: UIButton!

    @IBOutlet weak var secondClass: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = UserDefaults.standard.array(forKey: "savedClassDetails") ?? [String]()
        print(array)
        
        self.navigationController?.navigationBar.alpha = 0
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 38/255, green: 38/255, blue: 38/255, alpha: 1.0)
         self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "impact", size: 30)!, NSForegroundColorAttributeName : UIColor.white]
       // firstClass.setTitle(array[0] as? String, for: .normal)


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

