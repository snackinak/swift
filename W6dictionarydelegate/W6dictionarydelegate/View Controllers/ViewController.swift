//
//  ViewController.swift
//  W6dictionarydelegate
//
//  Created by Tucker on 2026-10-09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbTitle : UILabel!
    @IBOutlet var lbOp1 : UILabel!
    @IBOutlet var lbOp2 : UILabel!
    @IBOutlet var lbOp3 : UILabel!
    
    @IBAction func unwindToHomeVC(sender : UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        lbTitle.text = mainDelegate.title
        lbOp1.text = mainDelegate.options[0]
        lbOp2.text = mainDelegate.options[1]
        lbOp3.text = mainDelegate.options[2]
    }


}

