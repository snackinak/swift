//
//  SettingsViewController.swift
//  w4GameShell
//
//  Created by Jawaad Sheikh on 2017-06-07.
//  Copyright © 2017 Jawaad Sheikh. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // Step 7 - declare variables for slider and label
    @IBOutlet var slVolume : UISlider!
    @IBOutlet var lblVolume : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Step 10 - call update at load time
        updateLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Step 9 - declare an event handler to fire when
    // slider moves
    @IBAction func sliderValueChanged(_ sender : Any)
    {
        updateLabel()
    }
    
    
    // Step 8 declare a method to update the label with 
    // new slider values.
    func updateLabel()
     {
        let vol = slVolume.value;
        let strVol = String(format: "%f", vol)
        lblVolume.text = strVol
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
