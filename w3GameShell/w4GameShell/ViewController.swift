//
//  ViewController.swift
//  w4GameShell
//
//  Created by Jawaad Sheikh on 2017-06-07.
//  Copyright © 2017 Jawaad Sheikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Step 1 - create storyboard as shown
    // Step 1b - drag view controller objects as shown
    // Step 1c - create new files (View Controllers) for each 
    // new view
    // Step 1d - enable landscape views only both in 
    // storyboard and in project settings.
    // Step 1e - add images by opening Finder and dragging
    // images from finder into the Assets.xcassets file
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // step 4 - add the following method to enable back button
    // functionality
    @IBAction func unwindToHomeViewController(segue: UIStoryboardSegue)
    {
        
    }
    


}

