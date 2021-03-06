//
//  MainNavigationController.swift
//  SlidingTransparentMenuMechanic
//
//  Created by Yung Dai on 2015-06-02.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

import UIKit

class MainNavigationController: ENSideMenuNavigationController, ENSideMenuDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: MenuTableViewController(), menuPosition: .Left)
        // Do any additional setup after loading the view.

        //sideMenu?.delegate = self //optional
        sideMenu?.menuWidth = 190.0 // optional, default is 160
        //sideMenu?.bouncingEnabled = false
        
        // make navigation bar showing over side menu
        view.bringSubviewToFront(navigationBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
