//
//  ViewController.swift
//  DropDownMap
//
//  Created by Jo Tu on 10/1/16.
//  Copyright © 2016 alvorithms. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let mapButton: UIButton = UIButton(type:UIButtonType.Custom)
    var openedMap : Bool = false

    var mapVC: UIViewController = UIViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadMapPushButtonAndVC()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func loadMapPushButtonAndVC(){
        
        mapVC = mainStoryboard.instantiateViewControllerWithIdentifier("map") as UIViewController
        
        mapButton.setImage(UIImage(named: "mapPin"), forState: UIControlState.Normal)
        mapButton.addTarget(self, action: #selector(self.slideMapUpOrDown), forControlEvents: UIControlEvents.TouchUpInside)
        mapButton.adjustsImageWhenHighlighted = false
        mapButton.frame = CGRectMake(-10, 0, 30, 30)
        let barButton = UIBarButtonItem(customView: mapButton)
        self.navigationItem.rightBarButtonItem = barButton
        
        
        self .addChildViewController(mapVC) //popover content is settingsvc
        
        self.mapVC.view.frame = CGRectMake(0, -700, self.view.frame.size.width, self.view.frame.size.height)
        
        self.view.addSubview(self.mapVC.view)
        
        
        
        
    }
    
    func slideMapUpOrDown(){
        
        
        
        
        
        if(openedMap){
            openedMap = false
            
            
            UIView .animateWithDuration(0.3, animations: {
                self.mapVC.view.frame = CGRectMake(0, -700, self.view.frame.size.width, self.view.frame.size.height)
                self.mapButton.setImage(UIImage(named: "mapPin"), forState: UIControlState.Normal)
                
            })
            
        }
        else{
            openedMap = true
            
            
            UIView .animateWithDuration(0.3, animations: {
                self.mapButton.setImage(UIImage(named: "tableView"), forState: UIControlState.Normal)
                
                self.mapVC.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
                
                
            })
            
        }
        
        //        navigationController?.pushViewController(dao.mapVC, animated: true)
    }

}

