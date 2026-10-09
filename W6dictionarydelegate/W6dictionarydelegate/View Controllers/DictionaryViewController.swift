//
//  DictionaryViewController.swift
//  W6dictionarydelegate
//
//  Created by Tucker on 2026-10-09.
//

import UIKit

class DictionaryViewController: UIViewController {

    @IBOutlet var lbTitle : UILabel!
    @IBOutlet var lbScore : UILabel!
    @IBOutlet var lbTime : UILabel!
    @IBOutlet var lbLevel : UILabel!
    @IBOutlet var lbHighScore : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        lbTitle.text = mainDelegate.title
        lbScore.text = mainDelegate.scores["score"]
        lbTime.text = mainDelegate.scores["time"]
        lbLevel.text = mainDelegate.scores["level"]
        lbHighScore.text = mainDelegate.scores["high"]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
