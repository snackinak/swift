//
//  GameViewController.swift
//  w4GameShell
//
//  Created by Jawaad Sheikh on 2017-06-07.
//  Copyright © 2017 Jawaad Sheikh. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    // Step 11 - delcare variables for display
    @IBOutlet var sgDiff : UISegmentedControl!
    @IBOutlet var lbDiff : UILabel!
    @IBOutlet var lbLevel : UILabel!
    @IBOutlet var lbScore : UILabel!
    @IBOutlet var lbTime : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Step 14 - call update for segment and give labels
        // some default text values.
        updateDifficulty()
        lbLevel.text = "Level: 5"
        lbScore.text = "Score: 365,321"
        lbTime.text = "Time Left: 54"

    }

    
    // Step 13 - create event handler to fire when 
    // segment changes
    @IBAction func segmentDidChange(_ sender : Any)
    {
        updateDifficulty()
    }
    
    // Step 12 - create method to update label when 
    // segmented control changes
    func updateDifficulty()
    {
        let diff = sgDiff.selectedSegmentIndex;
    
        if(diff == 0)
        {
            lbDiff.text = "Difficulty: Easy"
        }
        else if(diff == 1)
        {
            lbDiff.text = "Difficulty: Medium"
        }
        else
        {
            lbDiff.text = "Difficulty: Hard"
        }
    
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
