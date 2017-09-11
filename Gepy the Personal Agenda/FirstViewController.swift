//
//  FirstViewController.swift
//  Gepy the Personal Agenda
//
//  Created by Jayden Bulexa on 9/10/17.
//  Copyright © 2017 Jayden B. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    //Load View
    override func viewDidLoad() {
        super.viewDidLoad()
        //Change the NavBar attributes
        self.navigationController?.navigationBar.alpha = 0
        self.navigationController?.navigationBar.barTintColor = UIColor (red: 38/255, green: 38/255, blue: 38/255, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "impact", size: 30)!, NSForegroundColorAttributeName : UIColor.white]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
