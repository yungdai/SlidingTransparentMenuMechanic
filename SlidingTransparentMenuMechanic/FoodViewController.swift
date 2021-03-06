//
//  FoodViewController.swift
//  SlidingTransparentMenuMechanic
//
//  Created by Yung Dai on 2015-06-11.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, ENSideMenuDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.sideMenuController()?.sideMenu?.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(animated: Bool) {
        
        self.sideMenuController()?.sideMenu?.delegate = self
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
