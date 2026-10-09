//
//  AboutViewController.swift
//  w4GameShell
//
//  Created by Jawaad Sheikh on 2017-06-07.
//  Copyright © 2017 Jawaad Sheikh. All rights reserved.
//

import UIKit
//import WebKit

class AboutViewController: UIViewController
    , WKNavigationDelegate {

    // Step 5 - declare a new webview
    @IBOutlet var wbPage : UIWebView!
    @IBOutlet var activity : UIActivityIndicatorView!
    //@IBOutlet var wbPage : WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Step 6 - old - tell webview to display a website
        // note that only https works by default.
        // will need to enable security exception in info.plist
        // to allow for http websites
        
        // deprecated - using UIWebview
        let urlAddress = URL(string: "https://www.projectmkd.com")
        let url = URLRequest(url: urlAddress!)
        /* wbPage.load(url)
        wbPage.navigationDelegate = self */
        wbPage?.loadRequest(url as URLRequest)
        
 
    }
    
    // loadView executes before viewDidLoad
  //  override func loadView() {
    
        // Step 6 - new
        // iOS 11 - using WKWebView
        // unfortunately this code is broken based on
        // bug in iOS 10
        
      /*  let url = URL(string: "https://www.projectmkd.com")!
        let urlRequest = URLRequest(url: url)
        wbPage.load(urlRequest)
        wbPage.allowsBackForwardNavigationGestures = true
        */
   // }

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
