//
//  AnotherViewController.swift
//  SlidingTransparentMenuMechanic
//
//  Created by Yung Dai on 2015-06-02.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController, ENSideMenuDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Move next line to viewWillAppear functon if you store your view controllers
        self.sideMenuController()?.sideMenu?.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(animated: Bool) {
        
        self.sideMenuController()?.sideMenu?.delegate = self
    }

}
